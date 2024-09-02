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

// Get the number of rows from the user (this would typically be done via prompt in a browser)
const n = 4; // You can replace this with user input, e.g., prompt('Enter the number of rows:')
printDiamond(n);

