-- Defining a function using a pure-function/lambda expression.
addOne :: Int -> Int
addOne =
  \int -> int + 1

-- With an Explicit parameter
addOne2 :: Int -> Int
addOne2 n = n + 1

addOne' :: Int -> Int
addOne' = succ
