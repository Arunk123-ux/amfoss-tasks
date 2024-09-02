def print_diamond(n):
    # Upper half of the diamond
    for i in range(1, n + 1):
        print(' ' * (n - i) + '*' * (2 * i - 1))

    # Lower half of the diamond
    for i in range(n - 1, 0, -1):
        print(' ' * (n - i) + '*' * (2 * i - 1))

# Get the number of rows from the user
n = int(input("Enter the number of rows (for the upper half of the diamond): "))

# Call the function to print the diamond pattern
print_diamond(n)

