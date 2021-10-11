module Main
  where

  -- Factorial function definition in a recursive manner.
  factorial :: Int -> Int
  factorial 1 = 1
  factorial n = n * factorial (n - 1)

  -- Magical code thanks to Haskell! :)
  f xs = concat $ map (\x -> show x ++ "\n") $ map factorial $ map (\x -> read x :: Integer) $ words xs

  main = do
      getLine
      interact f
