/**
 * Helper wrapper class that stores the negated
 * flag for a literal in a clause as well as the
 * variable ID.
 *
 * NOTE: For efficiency purposes, the fields are made
 * public so the caller does not have to access them
 * through method invocations.
 */
public class Literal {
    public boolean negated;
    public int id;

    /**
     * Construct a literal for a variable 'i' 
     * with the negation flag 'neg'.
     *
     * @param neg - negation flag
     * @param i - variable ID
     */
    public Literal(boolean neg, int i) {
        this.negated = neg;
        this.id = i;
    }
}