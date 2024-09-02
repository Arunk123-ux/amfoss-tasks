
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

class FileCopy {
    public static void main(String[] args) {
        BufferedReader reader = null;
        FileWriter writer = null;

        try {
            // Open the input file for reading
            reader = new BufferedReader(new FileReader("input.txt"));

            // Open the output file for writing
            writer = new FileWriter("output.txt");

            String line;

            // Read the string from input.txt and write it to output.txt
            while ((line = reader.readLine()) != null) {
                writer.write(line);
                writer.write(System.lineSeparator()); // To preserve the line breaks
            }

            System.out.println("File has been copied successfully.");
        } catch (IOException e) {
            System.out.println("An error occurred: " + e.getMessage());
        } finally {
            try {
                // Close the reader and writer to free up resources
                if (reader != null) {
                    reader.close();
                }
                if (writer != null) {
                    writer.close();
                }
            } catch (IOException e) {
                System.out.println("An error occurred while closing the files: " + e.getMessage());
            }
        }
    }
}


