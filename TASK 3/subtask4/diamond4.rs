use std::fs::File;
use std::io::{self, BufRead, Write};
use std::path::Path;

fn main() -> io::Result<()> {
    // Open the input file
    let input_path = Path::new("input.txt");
    let input_file = File::open(&input_path)?;
    let mut lines = io::BufReader::new(input_file).lines();

    // Read the first line which contains the number n
    if let Some(Ok(line)) = lines.next() {
        if let Ok(n) = line.trim().parse::<usize>() {
            // Open the output file
            let output_path = Path::new("output.txt");
            let mut output_file = File::create(&output_path)?;

            // Generate the upper part of the diamond
            for i in 0..n {
                let spaces = n - i - 1;
                let stars = 2 * i + 1;
                writeln!(output_file, "{}{}", " ".repeat(spaces), "*".repeat(stars))?;
            }

            // Generate the lower part of the diamond
            for i in (0..n - 1).rev() {
                let spaces = n - i - 1;
                let stars = 2 * i + 1;
                writeln!(output_file, "{}{}", " ".repeat(spaces), "*".repeat(stars))?;
            }
        } else {
            eprintln!("The first line of input.txt is not a valid number.");
        }
    } else {
        eprintln!("input.txt is empty or couldn't be read.");
    }

    Ok(())
}

