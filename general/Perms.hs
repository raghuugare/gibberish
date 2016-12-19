{-|
Module      : Perms
Description : Permutations of a list & other related functions.
Copyright   : (c) Raghu Ugare, 2016
License     : MIT
Maintainer  : raghu.ugare@email.com
Stability   : experimental
Portability : POSIX
-}
module Perms(sublists) where

-- | Sublists of a list obtained by non-deterministic (list, which represents choices/possibilities) nature of an element being a member or not in the list.
-- Written as shown below:
-- 
-- @
-- sublists xs = filterM (\x -> [True, False]) xs
-- @
sublists :: [a] -> [[a]]
sublists xs = filterM (\x -> [True, False]) xs


