coll :: (Int,Int)  -> (Int,Int)
coll (n,count)
  | n `mod` 2 == 0 = (n `div` 2, count + 1)
  | otherwise = (3*n + 1, count + 1)

-- To be continued for the Collatz sequence.
main :: IO ()
main = do
  print "Hello World!"
