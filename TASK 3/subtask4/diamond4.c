#include <stdio.h>
#include <stdlib.h>

void printDiamond(int n, FILE *outputFile) {
    // Upper half of the diamond
    for (int i = 1; i <= n; i++) {
        for (int j = 0; j < n - i; j++) {
            fprintf(outputFile, " ");
        }
        for (int j = 0; j < 2 * i - 1; j++) {
            fprintf(outputFile, "*");
        }
        fprintf(outputFile, "\n");
    }

    // Lower half of the diamond
    for (int i = n - 1; i >= 1; i--) {
        for (int j = 0; j < n - i; j++) {
            fprintf(outputFile, " ");
        }
        for (int j = 0; j < 2 * i - 1; j++) {
            fprintf(outputFile, "*");
        }
        fprintf(outputFile, "\n");
    }
}

int main() {
    FILE *inputFile = fopen("input.txt", "r");
    FILE *outputFile = fopen("output.txt", "w");
    int n;

    if (inputFile == NULL) {
        perror("Error opening input file");
        return EXIT_FAILURE;
    }

    if (outputFile == NULL) {
        perror("Error opening output file");
        fclose(inputFile);
        return EXIT_FAILURE;
    }

    // Read the number from input.txt
    if (fscanf(inputFile, "%d", &n) != 1) {
        fprintf(stderr, "Error reading the number from input file\n");
        fclose(inputFile);
        fclose(outputFile);
        return EXIT_FAILURE;
    }

    // Generate and write the diamond pattern to output.txt
    printDiamond(n, outputFile);

    // Close files
    fclose(inputFile);
    fclose(outputFile);

    return EXIT_SUCCESS;
}

