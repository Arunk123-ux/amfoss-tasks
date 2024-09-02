# Read the number 'n' from the input file
with open('input.txt', 'r') as file:
    n = int(file.read().strip())

# Open the output file in write mode
with open('output.txt', 'w') as file:
    # Generate the top half of the diamond (including the middle line)
    for i in range(1, n + 1):
        spaces = ' ' * (n - i)
        stars = '*' * (2 * i - 1)
        file.write(spaces + stars + '\n')

    # Generate the bottom half of the diamond
    for i in range(n - 1, 0, -1):
        spaces = ' ' * (n - i)
        stars = '*' * (2 * i - 1)
        file.write(spaces + stars + '\n')

print("Diamond pattern generated in 'output.txt'.")

