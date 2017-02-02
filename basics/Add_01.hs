-- Defining a function using a pure-function/lambda expression.
addOne :: Int -> Int
addOne =
  \int -> int + 1

addOne' :: Int -> Int
addOne' = succ
