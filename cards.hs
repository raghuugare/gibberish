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
