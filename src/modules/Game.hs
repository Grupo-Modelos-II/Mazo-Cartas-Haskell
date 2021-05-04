module Game where

type Value = String
type Symbol = String

type Card = (Value, Symbol)

type Mallet = [Card]

getMallet::Mallet
getMallet = [("Q", "Trebol"), ("A", "Corazon")]

addCard::Card->Mallet
addCard card = getMallet ++ [card]

findCard::Card->Mallet->Card
findCard card mallet
 | null mallet = ("", "")
 | card == head mallet = card
 | otherwise = findCard card (tail mallet)

getValueCard::Symbol->Mallet->Value
getValueCard symbol ((v, s):t)
 | null t = ""
 | symbol == s = v
 | otherwise = getValueCard symbol t
