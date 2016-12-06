{-|
Module      : Pascal
Description : The Pascal's Triangle, in Haskell!
Copyright   : (c) Raghu Ugare, 2016
License     : MIT
Maintainer  : raghu.ugare@email.com
Stability   : experimental
Portability : POSIX

Playing with the idea of @<https://en.wikipedia.org/wiki/Pascal's_triangle Pascal's Triangle>@ in Haskell.
-}
module Pascal(
  -- * Introduction
  -- $intro
  -- * Types
  Row
  -- * Functions
  , pascal
  , row) where

-- $intro
-- This module has some functions that let us play with Pascal triangles of different sizes

-- | Type definition for a 'row' of Ints.
type Row = [Int]

-- | Each row of the Pascal's Triangle.
row :: Int -> Row
row 0 = [1]
row n = zipWith (+) (0 : row (n-1)) (row (n-1) ++ [0])

-- | The Pascal's Triangle.
-- Represented as a list of 'row's
-- A list of 'rows' formed by the Binomial Coefficients __n-C-r__
-- 
-- For example, Pascal's triangle with @n=3@ looks like below:
-- 
-- @
--    1
--
--   1 1
--
--  1 2 1
--
-- 1 3 3 1
-- @
pascal :: Int -> [Row]
pascal n = map row [0..n]


