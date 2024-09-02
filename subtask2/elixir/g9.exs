defmodule FileCopy do
  def copy_file do
    # Read the contents of input.txt
    case File.read("input.txt") do
      {:ok, content} ->
        # Write the contents to output.txt
        case File.write("output.txt", content) do
          :ok ->
            IO.puts("File has been copied successfully.")
          {:error, reason} ->
            IO.puts("Error writing to output.txt: #{reason}")
        end

      {:error, reason} ->
        IO.puts("Error reading input.txt: #{reason}")
    end
  end
end

# Call the copy_file function
FileCopy.copy_file()

