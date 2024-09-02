const fs = require('fs');

// Read the number 'n' from the input file
fs.readFile('input.txt', 'utf8', (err, data) => {
    if (err) throw err;
    const n = parseInt(data.trim(), 10);

    let result = '';

    // Generate the top half of the diamond (including the middle line)
    for (let i = 1; i <= n; i++) {
        let spaces = ' '.repeat(n - i);
        let stars = '*'.repeat(2 * i - 1);
        result += spaces + stars + '\n';
    }

    // Generate the bottom half of the diamond
    for (let i = n - 1; i > 0; i--) {
        let spaces = ' '.repeat(n - i);
        let stars = '*'.repeat(2 * i - 1);
        result += spaces + stars + '\n';
    }

    // Write the diamond pattern to the output file
    fs.writeFile('output.txt', result, (err) => {
        if (err) throw err;
        console.log("Diamond pattern generated in 'output.txt'.");
    });
});

