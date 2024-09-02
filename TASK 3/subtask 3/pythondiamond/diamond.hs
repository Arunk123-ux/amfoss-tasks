-- Function to generate a single line of the diamond
generateLine :: Int -> Int -> String
generateLine n i = replicate (n - i) ' ' ++ replicate (2 * i - 1) '*'

-- Function to print the entire diamond
printDiamond :: Int -> IO ()
printDiamond n = do
    -- Upper half of the diamond
    mapM_ putStrLn [generateLine n i | i <- [1..n]]
    -- Lower half of the diamond
    mapM_ putStrLn [generateLine n i | i <- [n-1,n-2..1]]

-- Main function to get user input and print the diamond
main :: IO ()
main = do
    putStrLn "Enter the number of rows (for the upper half of the diamond):"
    input <- getLine
    let n = read input :: Int
    printDiamond(n)

