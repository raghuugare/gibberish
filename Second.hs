integer :: Int
integer = 42

character::Char
character = 'R'

str :: String
str = "Hello World!"

tuple :: (Int, String, Char)
tuple = (integer, str, character)

main :: IO()
main = do 
        print tuple
        print "Thank You!"
