-- Some recursive function definitions...

factorial :: Int -> Int
factorial 1 = 1
factorial n = n * factorial (n-1)

sumtorial :: Int -> Int
sumtorial 1 = 1
sumtorial n = n + sumtorial (n-1)

-- Non-recursive version of factorial using the built-in product function.
factorial' :: Int -> Int
factorial' n = product [1..n]
