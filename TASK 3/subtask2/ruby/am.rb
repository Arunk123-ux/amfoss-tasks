# Open the input file in read mode
input_file = File.open("input.txt", "r")

# Read the content of the input file
content = input_file.read

# Close the input file
input_file.close

# Open the output file in write mode
output_file = File.open("output.txt", "w")

# Write the content to the output file
output_file.write(content)

# Close the output file
output_file.close

puts "Content successfully copied from input.txt to output.txt."

