module Game where

type ValueString = String
type Symbol = String

type Card = (ValueString, Symbol)

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

getNumericValueCard::ValueString->Mallet->Int
getNumericValueCard value ((v, s):t)
 | null t = -1
 | value == "J" || value == "Q" || value == "K" = 10
 | value == "A" = 1
 | value == v = read value ::Int
 | otherwise = getNumericValueCard value t