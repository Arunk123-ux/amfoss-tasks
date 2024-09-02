defmodule Diamond do
  def print_diamond(n) do
    # Upper half of the diamond
    for i <- 1..n do
      IO.puts String.duplicate(" ", n - i) <> String.duplicate("*", 2 * i - 1)
    end

    # Lower half of the diamond
    for i <- (n - 1)..1 do
      IO.puts String.duplicate(" ", n - i) <> String.duplicate("*", 2 * i - 1)
    end
  end
end

# Get the number of rows from the user
n = IO.gets("Enter the number of rows (for the upper half of the diamond): ")
|> String.trim()
|> String.to_integer()

# Call the function to print the diamond pattern
Diamond.print_diamond(n)

