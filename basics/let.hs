{- Demo of the LET keyword -}
integer :: Int
integer =
  let one = 1
      two = 2
      in one + two

main :: IO ()
main = print integer
         
