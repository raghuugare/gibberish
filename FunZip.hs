{-|
Module      : FunZip
Description : Fun with Zip & its related functions!
Copyright   : (c) Raghu Ugare, 2016
License     : MIT
Maintainer  : raghu.ugare@email.com
Stability   : experimental
Portability : POSIX
-}
module FunZip(fibs) where

-- | The Fibonacci series as an infinite list.
-- | Uses 'zipWith' & recursion.
-- | Use 'take' to take as much as you need!
--
-- @
-- fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
-- @
fibs :: [Int]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)  
  
