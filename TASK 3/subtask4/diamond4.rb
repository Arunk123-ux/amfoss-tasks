# Read the number 'n' from the input file
n = File.read('input.txt').to_i

# Open the output file in write mode
File.open('output.txt', 'w') do |file|
  # Generate the top half of the diamond (including the middle line)
  (1..n).each do |i|
    spaces = ' ' * (n - i)
    stars = '*' * (2 * i - 1)
    file.puts spaces + stars
  end

  # Generate the bottom half of the diamond
  (n-1).downto(1) do |i|
    spaces = ' ' * (n - i)
    stars = '*' * (2 * i - 1)
    file.puts spaces + stars
  end
end

puts "Diamond pattern generated in 'output.txt'."

