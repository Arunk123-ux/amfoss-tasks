# Function to print the diamond pattern
def print_diamond(n)
  # Upper half of the diamond
  (1..n).each do |i|
    # Print leading spaces
    print ' ' * (n - i)
    # Print stars
    print '*' * (2 * i - 1)
    # Move to the next line
    puts
  end

  # Lower half of the diamond
  (n-1).downto(1) do |i|
    # Print leading spaces
    print ' ' * (n - i)
    # Print stars
    print '*' * (2 * i - 1)
    # Move to the next line
    puts
  end
end

# Ask user for input
puts "Enter the number of rows (for the upper half of the diamond):"
n = gets.chomp.to_i

# Print the diamond pattern
print_diamond(n)

