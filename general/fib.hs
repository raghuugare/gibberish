-- Fibonacci function...
fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- A recursive definition of the Fibonacci series using List Comprehension!
fibs :: [Int]
fibs = 1 : 1 : [ a + b | (a,b) <- zip fibs (tail fibs) ]

main :: IO ()
main = print (fib 10)
