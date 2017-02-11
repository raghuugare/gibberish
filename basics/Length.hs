len [] = 0
len (_:xs) = 1 + len xs

factorial :: Int -> Int
factorial 1 = 1
factorial n = n * factorial (n-1)

sumtorial :: Int -> Int
sumtorial 1 = 1
sumtorial n = n + sumtorial (n-1)

factorial' :: Int -> Int
factorial' n = product [1..n]
