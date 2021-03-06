module Cards where

import Data.List

-- Representing the ranks in a game of cards.
data Rank = Ace | Two | Three | Four | Five
          | Six | Seven | Eight | Nine | Ten
          | Jack | Queen
          deriving (Eq, Ord, Bounded, Enum, Show, Read)

-- Representing the Suit
data Suit = Spades | Hearts | Diamonds | Clubs
          deriving (Eq, Enum, Show, Read)

-- Representing a standard playing card...
data Card = Card Rank Suit
          deriving (Eq, Show, Read)

-- A 'hand' is simply a set (or list) of cards dealt (hopefully!) randomly.
type Hand = [Card]

-- Pick the best hand from a list of hands.
pick :: [Hand] -> Hand
pick hands = undefined

-- assign a unique(?) score to each type of Hand...
score :: Hand -> Int
score h = undefined
