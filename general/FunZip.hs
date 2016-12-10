{-|
Module      : FunZip
Description : Fun with zip & its related functions!
Copyright   : (c) Raghu Ugare, 2016
License     : MIT
Maintainer  : raghu.ugare@email.com
Stability   : experimental
Portability : POSIX
-}
module FunZip(fibs) where

-- | The Fibonacci series as an infinite list.
-- Uses 'zipWith' & recursion.
-- Use 'take' to take as much as you need!
--
-- @
-- fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
-- @
--
-- Sample usage is as below:
-- 
-- >>> take 5 fibs
-- [1,1,2,3,5]
fibs :: [Int]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)  
  
