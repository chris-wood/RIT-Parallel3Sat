import java.util.Random;
import java.util.HashSet;
import java.util.ArrayList;
import java.util.Scanner;
import java.io.File;
import java.math.BigInteger;

/**
 * ThreeSatOptimized.java
 *
 * Java program that solves a three-sat configuration (supplied or generated)
 * by applying a brute-force exhaustive search over all possible 
 * configurations.
 * 
 * This program runs sequentially, and is not parallelized.
 *
 * Usage: java ThreeSat <num_literals> <num_clauses> [seed]
 *              num_literals - Number of literals
 *              num_clauses  - Number of clauses    
 *              seed         - Seed for the PRNG
 *
 * Line 1:  4
 * Line 2:  !1 2 !3
 * Line 3:  1 2 !3
 * etc...
 **/
public class ThreeSatOptimized {

    /**
     * The main method. Runs the program.
     **/
    public static void main(String args[]) {

        /*if (args.length < 2) {
            System.out.println("Usage: " + 
                "java ThreeSat <num_literals> <num_clauses> [seed]");
            System.exit(1);
        }*/

        int num_clauses = 0;
        int num_literals = 0;

        // The literals structure
        // Literal "0" has a value of literals[0]
        ArrayList<Boolean> literals = null;

        // TODO: read in only VARIABLES, not the other nonsense...
        ThreeSatOptimized solver = new ThreeSatOptimized();
        System.out.println("Solved: " + solver.searchSolutions());
/*
        generateConfigurations(configurations, literals);

        ArrayList<Boolean> solution = null;
        for (ArrayList<Boolean> configuration : configurations) {
            // Get out as soon as you find a solution.
            if (satisfies(configuration, clauses, negations)) {
                solution = configuration;
                break;
            }
        }

        // If solution is null, no solution was found.
        if (solution == null) {
            System.out.println("No result found.");
            System.exit(1);
        }


        // Print the solution
        for (int i = 0; i < literals.size(); i++) {
            System.out.println(i + ": " + solution.get(i));
        }*/
    }

    public boolean searchSolutions() {

        // Clauses and the negations
        // Clauses contain integers as indices to the literals structure
        // Booleans is a "parallel" structure containing True or False
        //
        // ex: [ [0 1 2] [1 2 3] ]
        //     [ [T T T] [T F T] ]
        // Clause 1 has literals 0, 1, 2. Clause 2 has 1, 2, 3.
        // For this configuration, the "3" literal in clause 2 is negated.
        ArrayList<ArrayList<Literal>> clauses = new ArrayList<ArrayList<Literal>>();
        ArrayList<Literal> c1 = new ArrayList<Literal>();
        c1.add(new Literal(false, 0));
        c1.add(new Literal(false, 0));
        c1.add(new Literal(false, 0));
        ArrayList<Literal> c2 = new ArrayList<Literal>();
        c2.add(new Literal(true, 0));
        c2.add(new Literal(true, 0));
        c2.add(new Literal(true, 0));
        clauses.add(c1);
        clauses.add(c2);
        int numVariables = 3;
        ArrayList<Boolean> truthValues = new ArrayList<Boolean>();
        truthValues.add(false);
        truthValues.add(false);
        truthValues.add(false); // length matches numVariables

        // Print the clause prettily
        System.out.println("Looking for a solution to the following problem:");
        /*
        for (int i = 0; i < clauses.size(); i++) {
            ArrayList<Integer> clause = clauses.get(i);
            ArrayList<Boolean> clause_negations = negations.get(i);

            System.out.print("(");
            
            for (int j = 0; j < 3; j++) {

                if (clause_negations.get(j) == false) {
                    System.out.print("!");
                }

                System.out.print("" + clause.get(j));

                if (j != 2) {
                    System.out.print(" || ");
                }
            }
            System.out.print(")");

            if (i != clauses.size() - 1) {
                System.out.print(" && ");
            }
        }
        System.out.println("");
        */

        // Brute force search
        // Start by getting all combinations of literals
        ArrayList<ArrayList<Boolean>> configurations = new ArrayList<ArrayList<Boolean>>();

        // TODO: call function to walk from 0 -> 2^n-1
        BigInteger upper = new BigInteger("2");
        upper = upper.pow(truthValues.size());
        BigInteger lower = new BigInteger("0");
        while (lower.compareTo(upper) < 0) {
            // perform assignment
            for (int i = 0; i < truthValues.size(); i++) {
                if (lower.testBit(i)) {
                    truthValues.set(i, true);
                } else {
                    truthValues.set(i, false);
                }
            }

            // Check to see if satisfiable
            boolean formulaValue = true;
            for (int c = 0; c < clauses.size(); c++) {
                boolean clauseValue = false;
                for (int l = 0; l < clauses.get(c).size(); l++) {
                    if (clauses.get(c).get(l).negated == true && truthValues.get(clauses.get(c).get(l).id)) 
                        clauseValue = true;
                    else if (clauses.get(c).get(l).negated == false && !(truthValues.get(clauses.get(c).get(l).id)))
                        clauseValue = true; 
                }
                formulaValue = formulaValue && clauseValue;
                if (formulaValue == false)
                    break;
            }

            if (formulaValue == true) {
                for (Boolean b : truthValues) {
                    System.out.println(b);
                }
                return true;
            }

            lower = lower.add(BigInteger.ONE);
        }

        return false;
    }

    class Literal {
        public boolean negated;
        public int id;

        public Literal(boolean neg, int i) {
            negated = neg;
            id = i;
        }
    }
}