module Test(main) where

import Data.Maybe(catMaybes)

data Student a = Student {
  firstName :: String,
    lastName :: Maybe String,
    email :: Maybe String,
    score :: Int
  }

students = [
  Student "Raghu" (Just "Ugare") (Just "raghu.ugare@gmail.com") 98,
  Student "Raj" Nothing (Just "raj@xyz.com") 99
           ]

emails = catMaybes $ fmap email students

squares = fmap (^2) [1..]

orderedPairs :: Int -> [(Int, Int)]
orderedPairs n = [(x,y) | x <-[1..n], y <- [1..n]]

main :: IO ()
main = putStrLn "Hello!"
