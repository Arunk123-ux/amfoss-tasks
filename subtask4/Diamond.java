import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class DiamondPattern {
    public static void main(String[] args) {
        try {
            // Read the number 'n' from the input file
            BufferedReader reader = new BufferedReader(new FileReader("input.txt"));
            int n = Integer.parseInt(reader.readLine().trim());
            reader.close();

            // Open the output file in write mode
            FileWriter writer = new FileWriter("output.txt");

            // Generate the top half of the diamond (including the middle line)
            for (int i = 1; i <= n; i++) {
                String spaces = " ".repeat(n - i);
                String stars = "*".repeat(2 * i - 1);
                writer.write(spaces + stars + "\n");
            }

            // Generate the bottom half of the diamond
            for (int i = n - 1; i > 0; i--) {
                String spaces = " ".repeat(n - i);
                String stars = "*".repeat(2 * i - 1);
                writer.write(spaces + stars + "\n");
            }

            writer.close();
            System.out.println("Diamond pattern generated in 'output.txt'.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

