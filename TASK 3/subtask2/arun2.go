package main

import (
    "io/ioutil"
    "log"
)

func main() {
    // Read the content from input.txt
    inputData, err := ioutil.ReadFile("input.txt")
    if err != nil {
        log.Fatalf("Failed to read from input.txt: %v", err)
    }

    // Write the content to output.txt
    err = ioutil.WriteFile("output.txt", inputData, 0644)
    if err != nil {
        log.Fatalf("Failed to write to output.txt: %v", err)
    }

    log.Println("Content successfully copied from input.txt to output.txt")
}

