integer :: Int
integer = one + two
  where
    one = 1
    two = 2

{-
Physics-style equation in Haskell supported by where...
-}
v = u + a*t
  where
    u = 0.0
    a = 9.8
    t = 10

main = print integer
  
