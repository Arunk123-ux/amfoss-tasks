import System.IO

main :: IO ()
main = do
    -- Open the input file for reading
    inputHandle <- openFile "input.txt" ReadMode
    -- Read the contents of the input file
    contents <- hGetContents inputHandle
    
    -- Open the output file for writing
    outputHandle <- openFile "output.txt" WriteMode
    -- Write the contents to the output file
    hPutStr outputHandle contents
    
    -- Close the files
    hClose inputHandle
    hClose outputHandle

