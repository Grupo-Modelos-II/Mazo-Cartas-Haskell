{-Definicion del modulo de logica del juego-}
module Game where

import System.Random(randomRIO)

type ValueString = String

{-Definicion de tipos abstractos-}

type Value = String
type Symbol = String

type Card = (ValueString, Symbol)

type Mallet = [Card]

{-Definicion de las funciones-}

getRandom = do randomRIO(0, 51) ::IO Int

getDeck::Mallet
getDeck = [("2", "Corazon"), ("3", "Corazon"), ("4", "Corazon"), ("5", "Corazon"), ("6", "Corazon"), ("7", "Corazon"), ("8", "Corazon"), ("9", "Corazon"), ("10", "Corazon"), ("J", "Corazon"), ("Q", "Corazon"), ("K", "Corazon"), ("A", "Corazon"), ("2", "Trebol"), ("3", "Trebol"), ("4", "Trebol"), ("5", "Trebol"), ("6", "Trebol"), ("7", "Trebol"), ("8", "Trebol"), ("9", "Trebol"), ("10", "Trebol"), ("J", "Trebol"), ("Q", "Trebol"), ("K", "Trebol"), ("A", "Trebol"), ("2", "Picas"), ("3", "Picas"), ("4", "Picas"), ("5", "Picas"), ("6", "Picas"), ("7", "Picas"), ("8", "Picas"), ("9", "Picas"), ("10", "Picas"), ("J", "Picas"), ("Q", "Picas"), ("K", "Picas"), ("A", "Picas"), ("2", "Diamante"), ("3", "Diamante"), ("4", "Diamante"), ("5", "Diamante"), ("6", "Diamante"), ("7", "Diamante"), ("8", "Diamante"), ("9", "Diamante"), ("10", "Diamante"), ("J", "Diamante"), ("Q", "Diamante"), ("K", "Diamante"), ("A", "Diamante")]

getMallet::IO Mallet
getMallet = do
    numA <- getRandom
    numB <- getRandom
    return [getDeck!!numA, getDeck!!numB]

addCard::Card->IO Mallet
addCard card = do 
    mallet <- getMallet
    return (mallet  ++ [card])

findCard::ValueString->Mallet->Card
findCard value ((v, s):t)
 | null t = ("", "")
 | value == v = (v, s)
 | otherwise = findCard value t

getNumericValueCard::ValueString->Mallet->Int
getNumericValueCard value ((v, s):t)
 | null t = -1
 | value == "J" || value == "Q" || value == "K" = 10
 | value == "A" = 1
 | value == v = read value ::Int
 | otherwise = getNumericValueCard value t