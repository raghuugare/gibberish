-- Length of a List using recursion.
len [] = 0
len (_:xs) = 1 + len xs
