import java.util.ArrayList;
import java.util.Scanner;
import java.io.File;
import java.io.IOException;
import edu.rit.pj.Comm;
import java.util.Random;

/**
 * Sequential implementation of the 3-SAT exhaustive search algorithm.
 *
 * @author Christopher Wood
 * @author Eitan Romanoff
 * @author Ankur Bajoria
 **/
public class ThreeSat
{
    // CNF formula parameters
    private static int numClauses;
    private static int numVars;

    // Clause collection
    private static Literal[][] formula;

    // Boolean configuration collection
    private static boolean[] variables;

    private static long numConfigurations;

    // Global timing variables
    private static long startTime;
    private static long endTime;

    // Enable verbose mode.
    private static boolean verbose = false;

    /**
     * The main method. Runs the program.
     **/
    public static void main(String args[]) 
    {
        startTime = System.currentTimeMillis();

        if (args.length < 2) // TODO: change this...
        {
            showUsage();
        }

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
            if (args.length < 6) // caw
            {
                showUsage();
            }

            numVars = Integer.parseInt(args[1]);
            numClauses = Integer.parseInt(args[3]);
            long seed = Long.parseLong(args[5]);

            Random prng = new Random(seed);

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

        // Now exhaustively search for a solution (over all 2^V configurations).
        numConfigurations = 1L; 
        for (int i = 0; i < numVars; ++ i)
        {
            numConfigurations <<= 1;
        }
        int numSatisfiable = 0; // the number of satisfying solutions
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

            // If satisfiable, print this result.
            if (formulaValue) 
            {
                numSatisfiable++;
                System.out.println("FOUND SOLUTION");
                for (int i = 0; i < numVars; i++)
                {
                    System.out.println((i + 1) + " - " + variables[i]);
                } 
            }

            // Go to next configuration.
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

        // Print out the satisfiable or not.
        if (numSatisfiable > 0) 
        {
            System.out.println("Yes, with " + numSatisfiable + " satisfying configurations.");
        } 
        else 
        {   
            System.out.println("No.");
        }
        endTime = System.currentTimeMillis();
        System.out.println("Elapsed time: " + (endTime - startTime) + "msec");
    }

    /**
     * Print the usage message and then terminate abnormally.
     */
    public static void showUsage() 
    {
        System.err.println("java ThreeSatIterative [-n <num_literals> -c <num_clauses> -s <seed> | -f <file>] ");
        System.exit(-1);
    }
}