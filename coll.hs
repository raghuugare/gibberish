module coll() where

coll :: (Int,Int)  -> (Int,Int)
coll (n,count)
  | n `mod` 2 == 0 = (n/2, count + 1)
  | otherwise = (3*n + 1, count + 1)

-- To be continued for the Collatz sequence.
