{-|
Module      : Primes
Description : Haskell experiments on Prime numbers
Copyright   : (c) Raghu Ugare, 2016
License     : MIT
Maintainer  : raghu.ugare@email.com
Stability   : experimental
Portability : POSIX

My simple experiment with Prime number generation using Haskell's succinct-yet-expressive list comprehensions.
-}
module Primes(factors, prime, primes) where

-- | All the factors of a given +ve integer 'n'.
--   Written using list comprehension as shown below:
-- 
-- @
-- factors n = [x |  x <- [1..n], n \`mod\` x == 0]
-- @
factors :: Int -> [Int]
factors n = [x |  x <- [1..n], n `mod` x == 0]

-- | A Predicate to check for primeness.
--  By definition, a number is prime iff its factors are 1 & itself.
prime :: Int -> Bool
prime n = factors n == [1,n]

-- | The list of primes less than a given +ve integer 'n'.
--
-- An example usage is given below:
--
-- >>> primes 6
-- [2,3,5]
primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]

