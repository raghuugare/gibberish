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

-- | Sum of a List of ints
-- | Uses the 'foldr' higher-order function to achieve the same.
sumList :: [Int] -> Int
sumList = foldr (+) 0

-- | A predicate that tells if a number is perfect or not.
perfectQ :: Int -> Bool
perfectQ n = sumList (factors n) == 2*n

-- | Lo & behold! Our little list of perfect numbers less than 'n'
perfects :: Int -> [Int]
perfects n = filter perfectQ [2,4..n]


