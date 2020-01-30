import org.antlr.v4.runtime.*;

public class Check {
    public void analyze(String filename) throws Exception {
        CharStream input = CharStreams.fromFileName(filename);
        Lexer lexer = new JavaLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        tokens.fill();

        for(Token t : tokens.getTokens())
            if(t.getType() >= 0) {
                System.out.printf("[%3d] [%-15s] \"%s\"\n", 
                        t.getTokenIndex(),
                        JavaLexer.tokenNames[t.getType()],
                        t.getText());
            }
    }

    public static void main(String[] args) throws Exception {
        new Check().analyze(args[0]);
    }
}
