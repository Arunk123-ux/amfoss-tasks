#include <iostream>
#include <fstream>
#include <string>

int main() {
    // Declare input and output file streams
    std::ifstream inputFile("input.txt");
    std::ofstream outputFile("output.txt");

    // Check if the input file was opened successfully
    if (!inputFile) {
        std::cerr << "Unable to open input file";
        return 1;
    }

    // Check if the output file was opened successfully
    if (!outputFile) {
        std::cerr << "Unable to open output file";
        return 1;
    }

    // Read the content from input.txt
    std::string content;
    std::getline(inputFile, content);

    // Write the content to output.txt
    outputFile << content;

    // Close the files
    inputFile.close();
    outputFile.close();

    std::cout << "Content copied from input.txt to output.txt successfully.\n";

    return 0;
}

