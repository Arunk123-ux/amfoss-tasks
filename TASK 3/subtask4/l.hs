import System.IO

-- Function to generate the diamond pattern
generateDiamond :: Int -> [String]
generateDiamond n = top ++ bottom
  where
    top = [replicate (n - i) ' ' ++ replicate (2 * i - 1) '*' | i <- [1..n]]
    bottom = reverse (init top)

-- Main function to read input and write output
main :: IO ()
main = do
    -- Read the number from input.txt
    input <- readFile "input.txt"
    let n = read input :: Int

    -- Generate the diamond pattern
    let diamond = generateDiamond n

    -- Write the diamond pattern to output.txt
    writeFile "output.txt" (unlines diamond)
