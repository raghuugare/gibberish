{-|
Module      : Perfects
Description : Finding Perfect numbers
Copyright   : (c) Raghu Ugare, 2016
License     : MIT
Maintainer  : raghu.ugare@email.com
Stability   : experimental
Portability : POSIX

-}
module Perfects(factors, perfectQ, perfects) where

-- | All the factors of a given +ve integer 'n'.
--   Written using list comprehension as shown below:
-- 
-- @
-- factors n = [x |  x <- [1..n], n \`mod\` x == 0]
-- @
factors :: Int -> [Int]
factors n = [x |  x <- [1..n], n `mod` x == 0]

sumList :: [Int] -> Int
sumList = foldr (+) 0

perfectQ :: Int -> Bool
perfectQ n = sumList (factors n) == 2*n

perfects :: Int -> [Int]
perfects = filter perfectQ [2,4..10000]


