{-# LANGUAGE NoMonomorphismRestriction #-}

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine
-- or:
-- import Diagrams.Backend.xxx.CmdLine
-- where xxx is the backend you would like to use.

-- | Commands to run this file are as below: 
--
-- @
-- > ghc TestDiagram <RET>
-- > ./TestDiagram -w 100 -h 100 -o TestDiagram.svg <RET>
-- @
--
myCircle :: Diagram B
-- myCircle = circle 1 # lc red # fc white # showOrigin
myCircle = roundedRect 1.5 0.7 0.3 # fc white # showOrigin # showEnvelope

diagram :: Diagram B
diagram = circle 1 # lw ultraThick # lc purple # fc orange

c1 :: Diagram B
c1 = circle 0.5 # fc steelblue

c2 :: Diagram B
c2 = circle 1 # fc orange

d1 :: Diagram B
d1 = c1 `atop` c2

d2 :: Diagram B
d2 = c1 <> c2

d3 :: Diagram B
d3 = beside (V2 1 1) c1 c2 # showOrigin
-- Using compact lens notation, the same would be written as below:
-- d3 = beside (1 ^& 1) c1 c2 # showOrigin

d4 :: Diagram B
d4 = c1 ||| c2

s :: Diagram B
s = square 2

main = mainWith s


