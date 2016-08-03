-- ======================================================
-- Our own foldl & foldr functions...
-- ======================================================
myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl step zero (x:xs) = myFoldl step (step zero x) xs
myFoldl _ zero [] = zero

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr step zero (x:xs) = step x (myFoldr step zero xs)
myFoldr _ zero [] = zero


-- ======================================================
-- Our own map functions based on our foldl & foldr impls
-- ======================================================
mapr :: (a -> b) -> [a] -> [b]
mapr f xs = myFoldr step [] xs
  where
    step y ys = f y : ys


mapl :: (a -> b) -> [a] -> [b]
mapl f xs = myFoldl step [] xs
  where
    step ys y = f y : ys

-- ======================================================
-- Our own filters based on our foldl & foldr impls...
-- ======================================================

filterr :: (a -> Bool) -> [a] -> [a]
filterr predicate (x:xs) = myFoldr step [] xs
  where
    step y ys
      | predicate y = y:ys
      | otherwise = ys


filterl :: (a -> Bool) -> [a] -> [a]
filterl predicate (x:xs) = myFoldl step [] xs
  where
    step ys y
      | predicate y = y:ys
      | otherwise = ys


-- ======================================================
-- takeWhile functions...
-- ======================================================
myTakeWhile :: (a -> Bool) -> [a] -> [a]
myTakeWhile predicate (x:xs) = if (predicate x)
                               then x: (myTakeWhile predicate xs)
                               else []
myTakeWhile _ [] = []


myTakeWhiler :: (a -> Bool) -> [a] -> [a]
myTakeWhiler predicate (x:xs) = myFoldr step [] xs
                                where
                                  step y ys
                                     | predicate y = y:ys
                                     | otherwise = []


-- test :: Char -> Char
test = undefined

-- =====================================================
-- list lookup using foldr
-- =====================================================
rlookup :: (Eq a) => a -> [(a, b)] -> Maybe b
rlookup key xs = myFoldr step Nothing xs
  where
    step (k, v) ys
      | (k==key) = Just v
      | otherwise = ys
