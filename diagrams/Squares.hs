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
s :: Diagram B
s = square 2 # lc blue # fc white # showOrigin

s2 :: Diagram B
s2 = s `atop` (rotateBy (1/3) s)

s3 :: Diagram B
s3 = s `atop` (rotateBy (1/3) s2)

s4 :: Diagram B
s4 = s `atop` (rotateBy (1/4) s3)

main = mainWith s4


