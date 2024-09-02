// Import the readline module to handle user input from the terminal
const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

// Function to print the diamond pattern
function printDiamond(n) {
    // Upper half of the diamond
    for (let i = 1; i <= n; i++) {
        let str = ' '.repeat(n - i) + '*'.repeat(2 * i - 1);
        console.log(str);
    }

    // Lower half of the diamond
    for (let i = n - 1; i >= 1; i--) {
        let str = ' '.repeat(n - i) + '*'.repeat(2 * i - 1);
        console.log(str);
    }
}

// Prompt the user for the number of rows for the upper half of the diamond
readline.question('Enter the number of rows (for the upper half of the diamond): ', (input) => {
    const n = parseInt(input, 10);  // Convert the input to an integer
    if (isNaN(n) || n <= 0) {
        console.log("Please enter a valid positive number.");
    } else {
        printDiamond(n);
    }
    readline.close();  // Close the readline interface
});

