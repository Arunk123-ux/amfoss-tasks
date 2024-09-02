use std::fs::File;
use std::io::{self, Read, Write};

fn main() -> io::Result<()> {
    // Open the input file in read-only mode
    let mut input_file = File::open("input.txt")?;
    
    // Create a string to hold the content
    let mut content = String::new();

    // Read the content of the input file into the string
    input_file.read_to_string(&mut content)?;

    // Open the output file in write mode (creates or truncates the file)
    let mut output_file = File::create("output.txt")?;
    
    // Write the content to the output file
    output_file.write_all(content.as_bytes())?;

    println!("Content successfully copied from input.txt to output.txt.");

    Ok(())
}

