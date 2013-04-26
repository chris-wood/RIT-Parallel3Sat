import java.util.Scanner;
import java.io.File;
import java.io.IOException;
import edu.rit.pj.Comm;
import edu.rit.util.Random;
import edu.rit.pj.ParallelTeam;
import edu.rit.pj.ParallelRegion;
import edu.rit.pj.LongForLoop;
import edu.rit.pj.IntegerForLoop;

/**
 * Parallel implementation of the 3-SAT exhaustive search algorithm
 * that solves the decision version of the problem.
 *
 * @author Christopher Wood
 * @author Eitan Romanoff
 * @author Ankur Bajoria
 **/
public class ThreeSatSmp
{
    // PRNG seed and filename for initialization
    private static long seed;

    // CNF formula parameters
    private static int numClauses;
    private static int numVars;

    // Clause collection
    private static Literal[][] formula;

    // The number of satisfying solutions (shared variable for termination)
    private static long numSatisfiable;

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
        final ThreeSatSmp sat = new ThreeSatSmp();
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
                    numSatisfiable = 0;
                    execute(0, numConfigurations - 1, new LongForLoop() 
                    {
                        public void run(long first, long last) throws Exception
                        {   
                            sat.decide(first, last);
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
        if (numSatisfiable > 0) 
        {
            System.out.printf("Yes.%n");
        }
        else
        {
            System.out.printf("No.%n");
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
     * Decide whether or not the Boolean formula is satisfiable.
     * This relies on the private variables contained within the 
     * ThreeSatSeq class.
     *
     * @param first - first row index
     * @param last - last row index (inclusive)
     */
    public void decide(long first, long last) 
    {
        Literal[] formula_c;

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
        for (long config = first; config <= last && numSatisfiable == 0; config++)
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
                long tmp = numSatisfiable + 1;
                numSatisfiable = tmp; // JVM guarantees atomic set
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
    }

    /**
     * Print the usage message and then terminate abnormally.
     */
    public static void showUsage() 
    {
        System.err.println("java ThreeSatSmp [<file> | <num_literals> <num_clauses> <seed>]");
        System.exit(-1);
    }
}
