{-

-}

readInput = (map read . words)

writeOutput = unlines . (map show)

solve :: [Int] -> [Int]
solve [] =  []
solve (n:ns) = (result) : solve ns
    where
      result = (n * (3*n - 1)) `div` 2

main = do 
        n_str <- getLine
        interact (writeOutput . solve . readInput)
