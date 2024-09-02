defmodule DiamondPattern do
  def generate_pattern do
    # Read the number n from the input file
    {:ok, input} = File.read("input.txt")
    n = String.trim(input) |> String.to_integer()

    # Generate the diamond pattern
    pattern = generate_diamond(n)

    # Write the pattern to the output file
    File.write("output.txt", pattern)
  end

  defp generate_diamond(n) do
    # Top half of the diamond (including the middle line)
    top_half = for i <- 0..(n-1), into: "" do
      spaces = String.duplicate(" ", n - i - 1)
      stars = String.duplicate("*", 2 * i + 1)
      "#{spaces}#{stars}\n"
    end

    # Bottom half of the diamond
    bottom_half = for i <- (n-2)..0, into: "" do
      spaces = String.duplicate(" ", n - i - 1)
      stars = String.duplicate("*", 2 * i + 1)
      "#{spaces}#{stars}\n"
    end

    top_half <> bottom_half
  end
end

# Run the pattern generation
DiamondPattern.generate_pattern()

