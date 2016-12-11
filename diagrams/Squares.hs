{-# LANGUAGE NoMonomorphismRestriction #-}

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine
-- or:
-- import Diagrams.Backend.xxx.CmdLine
-- where xxx is the backend you would like to use.

-- | Commands to run this file are as below: 
--
-- @
-- > ghc Squares <RET>
-- > ./Squares -w 100 -h 100 -o Squares.svg <RET>
-- @
-- Note: To run in an auto-compiling L-oop, use -l switch & open the SVG file in an app like say, Gapplin (on Mac)
-- @
-- > ./Squares -l -w 400 -h 400 -o Squares.svg <RET>
-- @
--
--s :: Diagram B
--s = square 1 # lc yellow # showOrigin

sn :: Diagram B
sn = mconcat $ fmap rotateBy (map (\x -> 1/x) [0,2..30]) <*> pure s
      where
       s :: Diagram B
       s = square 1 # lc yellow # showOrigin

main = mainWith sn


