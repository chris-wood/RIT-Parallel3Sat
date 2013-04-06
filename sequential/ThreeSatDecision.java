import java.util.ArrayList;
import java.util.Scanner;
import java.io.File;
import java.io.IOException;
import edu.rit.pj.Comm;
import edu.rit.util.Random;

/**
 * Sequential implementation of the 3-SAT exhaustive search algorithm.
 *
 * @author Christopher Wood
 * @author Eitan Romanoff
 * @author Ankur Bajoria
 **/
public class ThreeSatDecision
{
    // CNF formula parameters
    private int numClauses;
    private int numVars;

    // Clause collection
    private Literal[][] formula;

    // Boolean configuration collection
    private boolean[] variables;

    private long numConfigurations;

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
        if (args.length < 2) // [-f fileName | numVars 
        {
            showUsage();
        }

        // TODO: do the command line parsing here, pass only results to the constructor...

        // Create the problem instance and then decide if the
        // freshly created formula is solvable.
        ThreeSatDecision sat = new ThreeSatDecision(args);
        boolean result = sat.decide();
        if (result)
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

    public ThreeSat(String[] args)
    {
        // Read in from a DIMACS formatted file
        if (args[0].equals("-f")) 
        {
            String filename = args[1];
            try 
            {
                File file = new File(filename);
                Scanner scanner = new Scanner(file);

                // Read in the number of clauses and variables
                numVars = Integer.parseInt(scanner.next());
                numClauses = Integer.parseInt(scanner.next());

                // Initialize the formula and variable data structure
                formula = new Literal[numClauses][3]; // 3 literals per clause
                variables = new boolean[numVars];

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
        else 
        {
            if (args.length < 6) 
            {
                showUsage();
            }

            numVars = Integer.parseInt(args[1]);
            numClauses = Integer.parseInt(args[3]);
            long seed = Long.parseLong(args[5]);

            Random prng = Random.getInstance(seed);

            formula = new Literal[numClauses][3]; // 3 literals per clause
            variables = new boolean[numVars];

            // Generate the formula
            for (int i = 0; i < numClauses; i++) 
            {
                for (int j = 0; j < 3; j++) 
                {
                    formula[i][j] = new Literal(prng.nextBoolean(), prng.nextInt(numVars));
                }
            }
        }

        // Print the clause prettily (if in verbose mode)
        if (verbose) 
        {
            System.out.println("Looking for a solution to the following problem:");
            for (int i = 0; i < numClauses; i++) 
            {
                System.out.print("(");
                for (int j = 0; j < 3; j++) 
                {
                    if (formula[i][j].negated == false) 
                    {
                        System.out.print("!");
                    }
                    System.out.print("" + formula[i][j].id);
                    if (j != 2) 
                    {
                        System.out.print(" || ");
                    }
                }
                System.out.print(")");
                if (i != numClauses - 1) 
                {
                    System.out.print(" && ");
                }
            }
            System.out.println("");
        }

        // Initialize all variables to false.
        for (int i = 0; i < numVars; i++) 
        {
            variables[i] = false;
        }
    }

    public boolean decide() 
    {
        // Now exhaustively search for a solution (over all 2^V configurations).
        numConfigurations = 1L; 
        for (int i = 0; i < numVars; ++ i)
        {
            numConfigurations <<= 1;
        }
        int numSatisfiable = 0; // the number of satisfying solutions

        // Now check all possible configurations for a satisfying assignment
        for (long config = 0L; config < numConfigurations; config++)
        {
            boolean formulaValue = true;
            for (int c = 0; c < numClauses; c++) 
            {
                boolean clauseValue = false;
                for (int l = 0; l < 3 && clauseValue == false; l++) 
                {
                    // Clause is only true if at least one literal is true
                    if (formula[c][l].negated == true && !variables[formula[c][l].id])
                    {
                        clauseValue = true;
                    } 
                    else if (formula[c][l].negated == false && variables[formula[c][l].id])
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

            // If satisfiable, return right away. Otherwise, go to
            // the next configuration.
            if (formulaValue) 
            {
                return true;
            }

            // Propagate the truth value throughout the collection.
            for (int i = 0; i < numVars; i++)
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

        return false; // No satisfying solution exists...
    }

    /**
     * Print the usage message and then terminate abnormally.
     */
    public static void showUsage() 
    {
        System.err.println("java ThreeSatDecision [-n <num_literals> -c <num_clauses> -s <seed> | -f <file>] ");
        System.exit(-1);
    }
}
