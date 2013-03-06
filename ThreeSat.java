import java.util.Random;
import java.util.HashSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

import java.io.File;

public class ThreeSat {

    public static void main(String args[]) {

        if (args.length < 2) {
            System.out.println("Usage: java ThreeSat <num_literals> <num_clauses> [seed]");
            System.exit(1);
        }

        int num_clauses = 0;
        int num_literals = 0;

        // This is a mapping from index to value, the literal is represented as an index
        ArrayList<Boolean> literals = null;

        // Each clause contains three numbers (indices) to the literals structure
        ArrayList<ArrayList<Integer>> clauses = null;
        ArrayList<ArrayList<Boolean>> negations = null;

        // Read in from a file
        if (args[0].equals("-f")) {
            String filename = args[1];
            try {
                File file = new File(filename);
                Scanner scanner = new Scanner(file);

                num_literals = Integer.parseInt(scanner.nextLine().trim());

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
                    ArrayList<Boolean> clause_negations = new ArrayList<Boolean>();
                    String[] tokens = file_lines.get(i).trim().split(" ");

                    for (int j = 0; j < 3; j++) {
                        boolean negation = true;
                        int literal = 0;

                        if (tokens[j].charAt(0) == '!') {
                            negation = false;
                            literal = Integer.parseInt(tokens[j].substring(1));
                        }
                        else {
                            literal = Integer.parseInt(tokens[j]);
                        }

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

        // Generate configuration
        else {
            try {
                num_literals = Integer.parseInt(args[0]);
                num_clauses = Integer.parseInt(args[1]);
            }
            catch (Exception e) {
                System.out.println("Usage: java ThreeSat <num_literals> <num_clauses> [seed]");
                System.exit(1);
            }
            


            // Generate a random problem
            Random prng = null;

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

            // This is a mapping from index to value, the literal is represented as an index
            literals = new ArrayList<Boolean>();

            // Each clause contains three numbers (indices) to the literals structure
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
        ArrayList<ArrayList<Boolean>> configurations = new ArrayList<ArrayList<Boolean>>();

        generateConfigurations(configurations, literals);

        ArrayList<Boolean> solution = null;
        for (ArrayList<Boolean> configuration : configurations) {
            if (satisfies(configuration, clauses, negations)) {
                solution = configuration;
                break;
            }
        }

        if (solution == null) {
            System.out.println("No result found.");
            System.exit(1);
        }


        // Print the solution
        for (int i = 0; i < literals.size(); i++) {
            System.out.println(i + ": " + solution.get(i));
        }
    }


    public static boolean satisfies(ArrayList<Boolean> literals, ArrayList<ArrayList<Integer>> clauses, ArrayList<ArrayList<Boolean>> negations) {
        ArrayList<Boolean> clause_results = new ArrayList<Boolean>();

        boolean result = true;

        for (int i = 0; i < clauses.size(); i++) {
            ArrayList<Integer> clause = clauses.get(i);
            ArrayList<Boolean> clause_negations = negations.get(i);

            boolean clause_result = false;
            for (int j = 0; j < 3; j++) {
                int index = clause.get(j);
                boolean negation = clause_negations.get(j);

                boolean literal = literals.get(index);
                if(!negation) { literal = !literal; }

                clause_result = clause_result || literal;
            }

            result = result && clause_result;
        }

        return result;
    }


    public static void generateConfigurations(ArrayList<ArrayList<Boolean>> configurations, ArrayList<Boolean> literals) {
        //configurations.add(literals);

        HashSet<Integer> unset_literals = new HashSet<Integer>();
        for (int i = 0; i < literals.size(); i++) {
            unset_literals.add(i);
        }

        configurations.add(literals);
        configurations.addAll( generateHelper(literals, 0) );
    }


    public static ArrayList<ArrayList<Boolean>> generateHelper(ArrayList<Boolean> incomplete_config, int marker) {
        ArrayList<ArrayList<Boolean>> accumulator = new ArrayList<ArrayList<Boolean>>();

        if (marker == incomplete_config.size()) {
            return accumulator;
        }

        ArrayList<Boolean> copy_incomplete_config_t = new ArrayList<Boolean>(incomplete_config);
        ArrayList<Boolean> copy_incomplete_config_f = new ArrayList<Boolean>(incomplete_config);


        copy_incomplete_config_t.set(marker, true);
        accumulator.add(copy_incomplete_config_t);
        //accumulator.add(copy_incomplete_config_f);

        marker = marker + 1;

        accumulator.addAll( generateHelper(copy_incomplete_config_t, marker) );
        accumulator.addAll( generateHelper(copy_incomplete_config_f, marker) );

        return accumulator;
    }
}