import java.util.Random;
import java.util.ArrayList;
import java.util.Scanner;
import java.io.File;
import java.math.BigInteger;

/**
 * ThreeSatIterative.java
 *
 * TODO
 **/
public class ThreeSatIterative {

    /**
     * The main method. Runs the program.
     **/
    public static void main(String args[]) {

        if (args.length < 2) {
            System.out.println("Usage: " + 
                "java ThreeSatIterative <num_literals> <num_clauses> [seed]");
            System.exit(1);
        }

        int numClauses = 0;
        int numVars = 0;

        // The clause collection
        ArrayList<ArrayList<Literal>> formula = 
            new ArrayList<ArrayList<Literal>>();

        // Read in from a DIMACS formatted file
        if (args[0].equals("-f")) {
            String filename = args[1];
            try {
                File file = new File(filename);
                Scanner scanner = new Scanner(file);

                // Ensure the file is properly formatted
                String start = scanner.next();
                String cnf = scanner.next();
                if (!(start.equals("p") && cnf.equals("cnf"))) {
                    throw new Exception("Invalid file format.");
                }

                // Read in the number of clauses and variables
                numVars = Integer.parseInt(scanner.next());
                numClauses = Integer.parseInt(scanner.next());
                scanner.skip("\n"); // end of the header line

                // Now read in all of the clauses.
                for (int c = 0; c < numClauses; c++) {
                    ArrayList<Literal> clause = new ArrayList<Literal>();
                    for (int i = 0; i < 3; i++) { 
                        int var = Integer.parseInt(scanner.next());
                        boolean negated = var < 0 ? true : false;
                        var = negated ? var * -1 : var;
                        Literal lit = new Literal(negated, var - 1);
                        clause.add(lit);
                    }

                    // Check to see if the line is terminated with a 0
                    int eol = Integer.parseInt(scanner.next());
                    if (eol != 0) {
                        throw new Exception("Invalid file format.");
                    }

                    // Add this new clause the formula
                    formula.add(clause);
                }
            }
            catch (Exception e) {
                System.out.println("Error: Error occured while reading file: " 
                    + filename);
                e.printStackTrace();
                System.exit(1);
            }
        }

        // Print the clause prettily
        System.out.println("Looking for a solution to the following problem:");
        for (int i = 0; i < formula.size(); i++) {
            ArrayList<Literal> clause = formula.get(i);

            System.out.print("(");
            for (int j = 0; j < 3; j++) {
                if (clause.get(j).negated == false) {
                    System.out.print("!");
                }
                System.out.print("" + clause.get(j).id);
                if (j != 2) {
                    System.out.print(" || ");
                }
            }
            System.out.print(")");

            if (i != formula.size() - 1) {
                System.out.print(" && ");
            }
        }
        System.out.println("");

        // Create a solver and try to find a solution
        ThreeSatIterative solver = new ThreeSatIterative();
        ArrayList<Boolean> assignment =  solver.searchSolutions(formula, numVars);

        // Print out the solution, if one exists.
        boolean debug = true;
        System.out.print("Satisfiable? ");
        if (assignment != null) {
            System.out.println("Yes.");
        } else {
            System.out.println("No.");
        }
    }

    /**
     * Exhaustive search the solution space for a potential solution.
     *
     * @param formula - the clauses of the 3-CNF formula
     * @param truthValues - the container for the truth values
     */
    public ArrayList<Boolean> searchSolutions(
        ArrayList<ArrayList<Literal>> formula, 
        int numVars) {

        // Initialize the collection to store the variable truth 
        // value assignments.
        ArrayList<Boolean> truthValues = 
            new ArrayList<Boolean>();
        for (int i = 0; i < numVars; i++) {
            truthValues.add(false);
        }

        // Establish the configuration bounds.
        BigInteger upper = new BigInteger("2");
        upper = upper.pow(numVars);
        BigInteger lower = new BigInteger("0");
        while (lower.compareTo(upper) < 0) {
            // Perform the truth value assignment.
            for (int i = 0; i < numVars; i++) {
                if (lower.testBit(i)) {
                    truthValues.set(i, true);
                } else {
                    truthValues.set(i, false);
                }
            }

            // Check to see if at least one literal evaluates to 
            // true for each clause.
            boolean formulaValue = true;
            for (int c = 0; c < formula.size(); c++) {
                boolean clauseValue = false;
                for (int l = 0; l < formula.get(c).size(); l++) {
                    if (formula.get(c).get(l).negated == true && 
                        !(truthValues.get(formula.get(c).get(l).id))) {
                        clauseValue = true;
                    } else if (formula.get(c).get(l).negated == false && 
                        truthValues.get(formula.get(c).get(l).id)) {
                        clauseValue = true; 
                    }
                }

                formulaValue = formulaValue && clauseValue;
                if (formulaValue == false) {
                    break;
                }
            }

            // Check to see if the formula was satisfied.
            if (formulaValue == true) return truthValues;

            // Advance to the next variable configuration
            lower = lower.add(BigInteger.ONE);
        }

        return null;
    }
}