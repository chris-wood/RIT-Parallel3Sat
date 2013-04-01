import java.util.Random;
import java.util.HashSet;
import java.util.ArrayList;
import java.util.Scanner;
import java.io.File;


/**
 * ThreeSatRecursive.java
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
 * An input file has the follpwing format. The first line is a single integer
 * that defines the number of literals to be used in the configuration.
 * Each subsequent line is a clause in the configuration. Here is an example:
 *
 * Line 1:  4
 * Line 2:  !1 2 !3
 * Line 3:  1 2 !3
 * etc...
 **/
public class ThreeSatRecursive {

    /**
     * The main method. Runs the program.
     **/
    public static void main(String args[]) {

        if (args.length < 2) {
            System.out.println("Usage: " + 
                "java ThreeSat <num_literals> <num_clauses> [seed]");
            System.exit(1);
        }

        int num_clauses = 0;
        int num_literals = 0;

        // The literals structure
        // Literal "0" has a value of literals[0]
        ArrayList<Boolean> literals = null;

        // Clauses and the negations
        // Clauses contain integers as indices to the literals structure
        // Booleans is a "parallel" structure containing True or False
        //
        // ex: [ [0 1 2] [1 2 3] ]
        //     [ [T T T] [T F T] ]
        // Clause 1 has literals 0, 1, 2. Clause 2 has 1, 2, 3.
        // For this configuration, the "3" literal in clause 2 is negated.
        ArrayList<ArrayList<Integer>> clauses = null;
        ArrayList<ArrayList<Boolean>> negations = null;

        // Read in from a file
        if (args[0].equals("-f")) {
            String filename = args[1];
            try {
                File file = new File(filename);
                Scanner scanner = new Scanner(file);

                num_literals = Integer.parseInt(scanner.nextLine().trim());

                // Store the lines for parsing
                ArrayList<String> file_lines = new ArrayList<String>();

                while (scanner.hasNextLine()) {
                    num_clauses ++;
                    file_lines.add(scanner.nextLine());
                }

                // Load in the literals
                literals = new ArrayList<Boolean>();
                for (int i = 0; i < num_literals; i++) {
                    literals.add(i, false);
                }

                // Load in the clauses
                clauses = new ArrayList<ArrayList<Integer>>();
                negations = new ArrayList<ArrayList<Boolean>>();
                for (int i = 0; i < num_clauses; i++) {
                    ArrayList<Integer> clause = new ArrayList<Integer>();
                    ArrayList<Boolean> clause_negations = 
                                                new ArrayList<Boolean>();
                    String[] tokens = file_lines.get(i).trim().split(" ");

                    // Each clause has 3 literals
                    for (int j = 0; j < 3; j++) {
                        // The neation sign's value. 
                        // False indicates that the literal will be negated
                        boolean negation = true;
                        int literal = 0;

                        // Negation check
                        if (tokens[j].charAt(0) == '!') {
                            negation = false;
                            literal = Integer.parseInt(tokens[j].substring(1));
                        }
                        else {
                            literal = Integer.parseInt(tokens[j]);
                        }

                        // Set up the clause to be added
                        clause.add(j, literal);
                        clause_negations.add(j, negation);
                    }

                    clauses.add(i, clause);
                    negations.add(i, clause_negations);
                }


            }
            catch (Exception e) {
                System.out.println("Error: Error occured while reading file.");
                e.printStackTrace();
                System.exit(1);
            }
        }


        // Generate configuration randomly
        else {
            try {
                num_literals = Integer.parseInt(args[0]);
                num_clauses = Integer.parseInt(args[1]);
            }
            catch (Exception e) {
                System.out.println("Usage: " + 
                    "java ThreeSat <num_literals> <num_clauses> [seed]");
                System.exit(1);
            }
            
            Random prng = null;

            // If a seed is supplied, use it to construct the PRNG
            if (args.length == 3) {
                long seed = 0;
                try {
                    seed = Long.parseLong(args[2]);
                }
                catch (Exception e) {
                    System.out.println("Error: Seed must be of long type.");
                    System.exit(1);
                }
                prng = new Random(seed);
            }
            else {
                prng = new Random();
            }

            // Make the configuration structures
            literals = new ArrayList<Boolean>();
            clauses = new ArrayList<ArrayList<Integer>>();
            negations = new ArrayList<ArrayList<Boolean>>();

            // initialize the literals
            for (int i = 0; i < num_literals; i++) {
                literals.add(i, false);
            }

            // initialize the clauses
            for (int i = 0; i < num_clauses; i++) {
                ArrayList<Integer> clause = new ArrayList<Integer>();
                ArrayList<Boolean> clause_negations = new ArrayList<Boolean>();
                HashSet<Integer> selected = new HashSet<Integer>();

                for (int j = 0; j < 3; j++) {
                    int candidate = prng.nextInt(literals.size());
                    boolean negation = prng.nextBoolean();

                    while( selected.contains(candidate) ) {
                        candidate = prng.nextInt(literals.size());
                    }

                    clause.add(j, candidate);
                    clause_negations.add(j, negation);
                    selected.add(candidate);
                }

                clauses.add(i, clause);
                negations.add(i, clause_negations);
            }
        }


        // Print the clause prettily
        System.out.println("Looking for a solution to the following problem:");
        
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


        // Brute force search
        // Start by getting all combinations of literals
        ArrayList<ArrayList<Boolean>> configurations = 
                                        new ArrayList<ArrayList<Boolean>>();

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
        }
    }


    /**
     * This function checks to see if a configuration of literals, 
     * for a configuration of clauses, will return true;
     **/
    public static boolean satisfies(
                            ArrayList<Boolean> literals, 
                            ArrayList<ArrayList<Integer>> clauses, 
                            ArrayList<ArrayList<Boolean>> negations) {

        // Each clause has a result, and we will "and" these together
        ArrayList<Boolean> clause_results = new ArrayList<Boolean>();

        boolean result = true;

        for (int i = 0; i < clauses.size(); i++) {
            ArrayList<Integer> clause = clauses.get(i);
            ArrayList<Boolean> clause_negations = negations.get(i);

            // Get the result of the clause
            boolean clause_result = false;
            for (int j = 0; j < 3; j++) {
                int index = clause.get(j);
                boolean negation = clause_negations.get(j);

                boolean literal = literals.get(index);
                if(!negation) { literal = !literal; }

                clause_result = clause_result || literal;
            }

            // "and" the clauses together
            result = result && clause_result;
        }

        return result;
    }


    /**
     * Recursively generates all of the possible configurations.
     * This makes 2^n combinations, where n is the number of literals.
     *
     * The strategy is to go from "left" to "right". For n = 4,
     *                TFFF                     FFFF
     *           TTFF      TFFF           FTFF      FFFF
     *        TTTF TTFF  TFTF TFFF     FTTF FTFF  FFTF FFFF
     * etc.
     * 
     * To fix the redundancy, we simply add only when a "T" is
     * flipped on in the configuration. We add all false manually.
     **/
    public static void generateConfigurations(
                            ArrayList<ArrayList<Boolean>> configurations,
                            ArrayList<Boolean> literals) {

        HashSet<Integer> unset_literals = new HashSet<Integer>();
        for (int i = 0; i < literals.size(); i++) {
            unset_literals.add(i);
        }

        // Add all false to start
        configurations.add(literals);
        configurations.addAll( generateHelper(literals, 0) );
    }


    /**
     * Recursive helper function
     **/
    public static ArrayList<ArrayList<Boolean>> generateHelper(
                            ArrayList<Boolean> incomplete_config, 
                            int marker) {

        ArrayList<ArrayList<Boolean>> accumulator = 
                                    new ArrayList<ArrayList<Boolean>>();

        if (marker == incomplete_config.size()) {
            return accumulator;
        }

        ArrayList<Boolean> copy_incomplete_config_t = 
                                    new ArrayList<Boolean>(incomplete_config);
        ArrayList<Boolean> copy_incomplete_config_f = 
                                    new ArrayList<Boolean>(incomplete_config);


        // For the true copy, flip the literal at marker's position to TRUE
        // Only add this to the accumulator
        copy_incomplete_config_t.set(marker, true);
        accumulator.add(copy_incomplete_config_t);

        marker = marker + 1;

        // Recursively call with the literal at marker's position as 
        // TRUE and as FALSE. This is the binary branch.
        accumulator.addAll( generateHelper(copy_incomplete_config_t, marker) );
        accumulator.addAll( generateHelper(copy_incomplete_config_f, marker) );

        return accumulator;
    }
}