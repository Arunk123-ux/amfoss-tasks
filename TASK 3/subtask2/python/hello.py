# Open the input.txt file in read mode
with open('input.txt', 'r') as infile:
    # Read the content of the file
    content = infile.read()

# Open the output.txt file in write mode
with open('output.txt', 'w') as outfile:
    # Write the content to output.txt
    outfile.write(content)

