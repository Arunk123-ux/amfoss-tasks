#include <iostream>
#include <fstream>
#include <iomanip> // For std::setw

void printDiamond(int n, std::ofstream& outputFile) {
    // Upper half of the diamond
    for (int i = 1; i <= n; ++i) {
        outputFile << std::setw(n - i + 1) << std::setfill(' ') << ""; // Print leading spaces
        outputFile << std::setw(2 * i - 1) << std::setfill('*') << ""; // Print asterisks
        outputFile << "\n";
    }

    // Lower half of the diamond
    for (int i = n - 1; i >= 1; --i) {
        outputFile << std::setw(n - i + 1) << std::setfill(' ') << ""; // Print leading spaces
        outputFile << std::setw(2 * i - 1) << std::setfill('*') << ""; // Print asterisks
        outputFile << "\n";
    }
}

int main() {
    std::ifstream inputFile("input.txt");
    std::ofstream outputFile("output.txt");

    if (!inputFile.is_open()) {
        std::cerr << "Error opening input file." << std::endl;
        return 1;
    }

    if (!outputFile.is_open()) {
        std::cerr << "Error opening output file." << std::endl;
        return 1;
    }

    int n;
    inputFile >> n;

    if (inputFile.fail()) {
        std::cerr << "Error reading the number from input file." << std::endl;
        return 1;
    }

    printDiamond(n, outputFile);

    inputFile.close();
    outputFile.close();

    return 0;
}

