import java.util.Scanner;
import java.io.File;
import java.io.IOException;
import edu.rit.pj.Comm;
import edu.rit.util.Random;
import edu.rit.pj.ParallelTeam;
import edu.rit.pj.ParallelRegion;
import edu.rit.pj.LongForLoop;
import edu.rit.pj.IntegerForLoop;
import edu.rit.pj.reduction.SharedLong;
import edu.rit.pj.reduction.SharedInteger;
import edu.rit.pj.reduction.LongOp;

/**
 * Parallel implementation of the 3-SAT exhaustive search algorithm
 * that computes the total number of satisfying solutions.
 *
 * @author Christopher Wood
 * @author Eitan Romanoff
 * @author Ankur Bajoria
 **/
public class ThreeSatExhaustiveSmp
{
    // PRNG seed and filename for initialization
    private static long seed;

    // CNF formula parameters
    private static int numClauses;
    private static int numVars;

    // Clause collection
    private static Literal[][] formula;

    // Shared number of satisfying solutions
    private static SharedLong numSatisfiable;
    private static SharedLong solutionIndex;
    private static boolean[] solution;

    /**
     * The main method. Runs the program.
     **/
    public static void main(final String args[]) 
    {
        // Start the clock.
        long startTime = System.currentTimeMillis();

        // Set up the communication with the job server.
        try
        {
            Comm.init(args);
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        // Parse the command line arguments and create our solver.
        final ThreeSatExhaustiveSmp sat = new ThreeSatExhaustiveSmp();
        if (args.length == 1)
        {
            sat.initializeFromFile(args[0]);
        }
        else
        {
            numVars = Integer.parseInt(args[0]);
            numClauses = Integer.parseInt(args[1]);
            seed = Long.parseLong(args[2]);

            // Enforce the correct values on the formula.
            if (numVars < 1 || numClauses < 1)
            {
                System.err.println("Error: num_vars and num_clauses must be positive integers.");
                showUsage();
            }

            // Create the shared formula data structure.
            formula = new Literal[numClauses][3]; // 3 literals per clause
        }

        // Compute the total number of configurations (2^V)
        long tmp = 1;
        for (int i = 0; i < numVars; i++) 
        {
            tmp <<= 1;
        }
        final long numConfigurations = tmp;

        // Allocate space to store the solution configuration.
        final boolean[] solutionConfig = new boolean[numVars];

        // Enter the parallel region to perform the initialiation and decision tasks.
        try 
        {
            ParallelTeam team = new ParallelTeam();
            team.execute(new ParallelRegion()
            {
                public void run() throws Exception 
                {
                    // Handle the formula initialization step (if not already ready in from a file)
                    if (args.length != 1)
                    {
                        execute(0, numClauses - 1, new IntegerForLoop() 
                        {
                            public void run(int first, int last) throws Exception
                            {
                                sat.initializeFromPRNG(first, last);
                            }
                        });
                    }

                    // Now have each thread invoke the decide routine.
                    numSatisfiable = new SharedLong(0);
                    solutionIndex = new SharedLong(Long.MAX_VALUE);
                    execute(0, numConfigurations - 1, new LongForLoop() 
                    {
                        SolutionWrapper solution;

                        // Run the solver over this thread's slice
                        public void run(long first, long last) throws Exception
                        {   
                            solution = sat.decide(first, last);
                        }

                        // Reduce the results back into a single place
                        public void finish()   
                        {
                            if (solution != null)
                            {
                                numSatisfiable.addAndGet(solution.numSolutions);
                                solutionIndex.reduce(solution.index, LongOp.MINIMUM);
                            }
                        }
                    });
                }
            });
        }
        catch (Exception e)
        {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        }

        // Check and print the result.
        if (numSatisfiable.get() > 0)
        {
            System.out.printf("Satisfiable with %d solutions.%n", numSatisfiable.get());
            initConfigArray(solutionConfig, solutionIndex.get());
            for (int i = 0; i < numVars; i++)
            {
                System.out.printf("X%d = %b%n", i, solutionConfig[i]);
            }
        }
        else
        {
            System.out.printf("Not satisfiable.%n");
        }

        // Stop the clock and display the time.
        long endTime = System.currentTimeMillis();
        System.out.printf((endTime - startTime) + " msec%n");        
    }

    /**
     * Initialize the 3-CNF formula from an external file.
     *
     * @param filename - file to read CNF formula from
     * @throws exception if the parameters are invalid
     */
    public void initializeFromFile(String filename) 
    {
        try 
        {
            File file = new File(filename);
            Scanner scanner = new Scanner(file);

            // Read in the number of clauses and variables
            numVars = Integer.parseInt(scanner.next());
            numClauses = Integer.parseInt(scanner.next());

            // Error check to make sure we're okay.
            if (numVars < 1 || numClauses < 1)
            {
                throw new Exception("Error: num_vars and num_clauses must be positive integers.");
            }

            // Initialize the formula and variable data structure
            formula = new Literal[numClauses][3]; // 3 literals per clause

            // Now read in all of the clauses.
            for (int c = 0; c < numClauses; c++) 
            {
                for (int i = 0; i < 3; i++) 
                { 
                    int var = Integer.parseInt(scanner.next());
                    boolean negated = var < 0 ? true : false;
                    var = negated ? var * -1 : var;
                    if (var < 1 || var > numVars)  
                    {
                        System.err.println("Error: variables must be within [1," + numVars + "]");
                        System.exit(-1);
                    }
                    Literal lit = new Literal(negated, var - 1);
                    formula[c][i] = lit;
                }
            }
        }
        catch (Exception e) 
        {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
            System.exit(-1);
        }
    }

    /**
     * Initialize a random 3-CNF formula from a PRNG for solving.
     *
     * @throws exception if parameters are invalid
     */
    public void initializeFromPRNG(int first, int last) throws Exception
    {
        // Initialize the PRNG and the formula/variable data structures
        Random prng = Random.getInstance(seed);
        prng.skip(first * 6); // each thread generates 6 random pieces of data.

        // Randomly generate the formula the formula
        for (int i = first; i <= last; i++) 
        {
            for (int j = 0; j < 3; j++) 
            {
                formula[i][j] = new Literal(prng.nextBoolean(), prng.nextInt(numVars));
            }
        }
    }

    /**
     * Initialize a boolean configuration array using the 
     */
    public static void initConfigArray(boolean[] config, long index) 
    {
        int n = config.length;
        for (int i = 0; i < n; i++)
        {
            if (((1 << (n - i - 1)) & index) > 0) 
            {
                config[i] = true;
            }
            else 
            {
                config[i] = false;
            }
        }
    }

    /**
     * Decide whether or not the Boolean formula is satisfiable.
     * This relies on the private variables contained within the 
     * ThreeSatSeq class.
     *
     * @param first - first row index
     * @param last - last row index (inclusive)
     * @return a solution block
     */
    public SolutionWrapper decide(long first, long last) 
    {
        Literal[] formula_c;
        long p_numSolutions = 0;
        long solutionIndex = Long.MAX_VALUE;

        // Initialize the variable configuration based on 
        // the configuration index.
        boolean[] variables = new boolean[numVars];
        for (int index = 0; index < numVars; index++)
        {
            if (((1 << (numVars - index - 1)) & first) > 0) 
            {
                variables[index] = true;
            }
            else 
            {
                variables[index] = false;
            }
        }

        // Iterate over every possible configuration for our given slice of the formula
        for (long config = first; config <= last; config++)
        {
            boolean formulaValue = true;
            for (int c = 0; c < numClauses; c++) 
            {
                formula_c = formula[c];
                boolean clauseValue = false;
                for (int l = 0; l < 3 && clauseValue == false; l++) 
                {
                    // A clause is only true if at least one literal is true.
                    if (formula_c[l].negated == true && !variables[formula_c[l].id])
                    {
                        clauseValue = true;
                    }
                    else if (formula_c[l].negated == false && variables[formula_c[l].id])
                    {
                        clauseValue = true; 
                    }
                }

                formulaValue = formulaValue && clauseValue;
                if (formulaValue == false) 
                {
                    break;
                }
            }

            // If satisfiable, increment the number of solutions.
            if (formulaValue) 
            {
                if (p_numSolutions == 0)
                {
                    solutionIndex = config;
                }
                p_numSolutions++;
            }

            // Go to next configuration.
            for (int i = numVars - 1; i >= 0; i--)
            {
                if (variables[i] == true) 
                {
                    variables[i] = false;
                }
                else 
                {
                    variables[i] = true;
                    break;
                }
            }
        }

        return new SolutionWrapper(p_numSolutions, solutionIndex);
    }

    /**
     * Print the usage message and then terminate abnormally.
     */
    public static void showUsage() 
    {
        System.err.println("java ThreeSatSmp [<file> | <num_vars> <num_clauses> <seed>]");
        System.exit(-1);
    }

    /**
     * Helper class to store the solution information (number and first index)
     */
    static class SolutionWrapper
    {
        // Variables to store the solution information.
        public long numSolutions;
        public long index;

        /**
         * Create a solution wrapper that stores the number of solutions and the index
         * of the first encountered solution.
         */
        public SolutionWrapper(long numSolutions, long index)
        {
            this.numSolutions = numSolutions;
            this.index = index;
        }
    }
}
