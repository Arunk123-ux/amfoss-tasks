use std::io;

fn main() {
    // Prompt the user for input
    println!("Enter a number: ");

    // Read the input from the user
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read input");

    // Convert the input to an integer
    let n: usize = input.trim().parse().expect("Please enter a valid number");

    // Generate the upper part of the diamond
    for i in 1..=n {
        for _ in 0..n-i {
            print!(" ");
        }
        for _ in 0..(2*i-1) {
            print!("*");
        }
        println!();
    }

    // Generate the lower part of the diamond
    for i in (1..n).rev() {
        for _ in 0..n-i {
            print!(" ");
        }
        for _ in 0..(2*i-1) {
            print!("*");
        }
        println!();
    }
}

