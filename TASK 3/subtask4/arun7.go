package main

import (
    "fmt"
    "io/ioutil"
    "os"
    "strconv"
    "strings"
)

func generateDiamond(n int) []string {
    var diamond []string

    // Top part of the diamond
    for i := 1; i <= n; i++ {
        spaces := strings.Repeat(" ", n-i)
        stars := strings.Repeat("*", 2*i-1)
        diamond = append(diamond, spaces+stars)
    }

    // Bottom part of the diamond (excluding the middle line)
    for i := n - 1; i >= 1; i-- {
        spaces := strings.Repeat(" ", n-i)
        stars := strings.Repeat("*", 2*i-1)
        diamond = append(diamond, spaces+stars)
    }

    return diamond
}

func main() {
    // Read the number from input.txt
    inputData, err := ioutil.ReadFile("input.txt")
    if err != nil {
        fmt.Println("Error reading input file:", err)
        os.Exit(1)
    }

    // Convert the input data to an integer
    trimmedInput := strings.TrimSpace(string(inputData))
    n, err := strconv.Atoi(trimmedInput)
    if err != nil {
        fmt.Printf("Error converting input to integer: %v\n", err)
        fmt.Printf("Input content: %s\n", trimmedInput)
        os.Exit(1)
    }

    // Generate the diamond pattern
    diamond := generateDiamond(n)

    // Write the diamond pattern to output.txt
    err = ioutil.WriteFile("output.txt", []byte(strings.Join(diamond, "\n")), 0644)
    if err != nil {
        fmt.Println("Error writing output file:", err)
        os.Exit(1)
    }

    fmt.Println("Diamond pattern written to output.txt")
}

