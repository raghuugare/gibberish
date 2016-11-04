module Main
  where

  factorial 1 = 1
  factorial n = n * factorial (n - 1)

  f xs = concat $ map (\x -> show x ++ "\n") $ map factorial $ map (\x -> read x :: Integer) $ words xs

  main = do
      getLine
      interact f
