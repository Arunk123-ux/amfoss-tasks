#include <stdio.h>

int main() {
    FILE *inputFile, *outputFile;
    char buffer[1000];

    // Open the input file in read mode
    inputFile = fopen("input.txt", "r");
    if (inputFile == NULL) {
        printf("Error opening input file.\n");
        return 1;
    }

    // Open the output file in write mode
    outputFile = fopen("output.txt", "w");
    if (outputFile == NULL) {
        printf("Error opening output file.\n");
        fclose(inputFile);
        return 1;
    }

    // Read the string from input.txt and write it to output.txt
    while (fgets(buffer, sizeof(buffer), inputFile) != NULL) {
        fputs(buffer, outputFile);
    }

    // Close both files
    fclose(inputFile);
    fclose(outputFile);

    printf("File has been copied successfully.\n");
    return 0;
}



