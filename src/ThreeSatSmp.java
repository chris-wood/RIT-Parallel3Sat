import java.util.ArrayList;
import java.util.Scanner;
import java.io.File;
import java.io.IOException;
import edu.rit.pj.Comm;
import edu.rit.util.Random;
import edu.rit.pj.ParallelTeam;
import edu.rit.pj.ParallelRegion;
import edu.rit.pj.LongForLoop;

/**
 * Sequential implementation of the 3-SAT exhaustive search algorithm.
 *
 * @author Christopher Wood
 * @author Eitan Romanoff
 * @author Ankur Bajoria
 **/
public class ThreeSatSmp
{
    // CNF formula parameters
    private static int numClauses;
    private static int numVars;

    // Clause collection
    private static Literal[][] formula;

    // Shared number of satisfying solutions
    private static int numSatisfiable;

    // Global timing variables
    private static long startTime;
    private static long endTime;

    /**
     * The main method. Runs the program.
     **/
    public static void main(String args[]) 
    {
        // Start the clock.
        startTime = System.currentTimeMillis();

        // TODO: Comm.init here

        // Parse the command line arguments
        ThreeSatSmp sat = null;
        try
        {
            if (args.length == 1)
            {
                sat = new ThreeSatSmp(args[0]); 
            }
            else if (args.length == 3)
            {
                sat = new ThreeSatSmp(Integer.parseInt(args[0]),
                    Integer.parseInt(args[1]), Long.parseLong(args[2]));
            }
            else
            {
                showUsage();
            }
        }
        catch (NumberFormatException e) 
        {
            System.err.println("Error: num_vars, num_clauses, and seed must be integers.");
            showUsage();
        }
        catch (Exception e)
        {
            System.err.println(e.getMessage());
            showUsage();
        }

        // Run the decision algorithm and display the result.
        boolean satisfiable = sat.decide();
        if (satisfiable)
        {
            System.out.println("Yes.");
        }
        else
        {
            System.out.println("No.");
        }

        // Stop the clock and display the time.
        endTime = System.currentTimeMillis();
        System.out.println((endTime - startTime) + "msec");
    }

    /**
     * Constructor to generate a 3-CNF formula from an external file.
     */
    public ThreeSatSmp(String filename)
    {
        try 
        {
            File file = new File(filename);
            Scanner scanner = new Scanner(file);

            // Read in the number of clauses and variables
            this.numVars = Integer.parseInt(scanner.next());
            this.numClauses = Integer.parseInt(scanner.next());

            if (numVars < 1 || numClauses < 1)
            {
                throw new Exception("Error: num_vars and num_clauses must be positive integers.");
            }

            // Initialize the formula and variable data structure
            this.formula = new Literal[numClauses][3]; // 3 literals per clause

            // Now read in all of the clauses.
            for (int c = 0; c < numClauses; c++) 
            {
                for (int i = 0; i < 3; i++) 
                { 
                    int var = Integer.parseInt(scanner.next());
                    boolean negated = var < 0 ? true : false;
                    var = negated ? var * -1 : var;
                    if (var < 1 || var > numVars)  // fix
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
     * Constructor to generate a random 3-CNF formula for solving.
     *
     * @throws exception if parameters are invalid
     */
    public ThreeSatSmp(int numVars, int numClauses, long seed) throws Exception
    {
        this.numVars = numVars;
        this.numClauses = numClauses;

        if (numVars < 1 || numClauses < 1)
        {
            throw new Exception("Error: num_vars and num_clauses must be positive integers.");
        }

        // Initialize the PRNG and the formula/variable data structures
        Random prng = Random.getInstance(seed);
        formula = new Literal[numClauses][3]; // 3 literals per clause

        // Randomly generate the formula the formula
        for (int i = 0; i < numClauses; i++) 
        {
            for (int j = 0; j < 3; j++) 
            {
                formula[i][j] = new Literal(prng.nextBoolean(), prng.nextInt(numVars));
            }
        }
    }

    public boolean decide() 
    {
        long tmp = 1L;
        for (int i = 0; i < numVars; i++) 
        {
            tmp <<= 1;
        }

        // Time to parallelize!
        ParallelTeam team = new ParallelTeam();

        numSatisfiable = 0;
        final long numConfigurations = tmp;
        try 
        {
            team.execute(new ParallelRegion() 
            {
                public void run() throws Exception 
                {
                    execute(0, numConfigurations - 1, new LongForLoop() 
                    {
                        public void run(long first, long last) 
                        {
                            Literal[] formula_c;
                            int t_numSatisfiable = 0;

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

                            for (long config = first; config <= last && numSatisfiable == 0; config++)
                            {
                                boolean formulaValue = true;
                                for (int c = 0; c < numClauses; c++) 
                                {
                                    formula_c = formula[c];
                                    boolean clauseValue = false;
                                    for (int l = 0; l < 3 && clauseValue == false; l++) 
                                    {
                                        // A clause is only true if at least one literal is true
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

                                // If satisfiable, print this result
                                if (formulaValue) 
                                {
                                    int tmp = numSatisfiable + 1;
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
                            } // End per-thread for Loop
                        } // End loop's run
                    }); // End parallel long loop and execute
                } // End runs
            }); // End team.execute()
        }
        catch (Exception e) {
            System.err.println("Error occurred during the parallel team's execution.");
            e.printStackTrace();
        }

        System.out.println("numSatisfiable = " + numSatisfiable);
        return (numSatisfiable > 0);
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

