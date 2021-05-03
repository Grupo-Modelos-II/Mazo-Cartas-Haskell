module Operations where

import Game

pedirCarta::(String, String)->[(String, String)]
pedirCarta carta = addCard carta

buscarCarta::(String, String)->[(String, String)]->(String, String)
buscarCarta carta mallet = findCard carta mallet

preguntarValor::String->[(String, String)]->String
preguntarValor simbolo mallet = getValueCard simbolo mallet

{-menu::Int->Bool
menu opcion = do
 if opcion == 1 then
  value <- getLine
  symbol <- getLine
  print(pedirCarta(value, symbol))
 else if opcion == 2 then
  value <- getLine
  symbol <- getLine
  print(buscarCarta(value, symbol) getMallet)
 else if opcion == 3 then
  symbol <- getLine
  print(preguntarValor symbol mallet)
 putStr "Repetir Proceso? Hijo de tu chingada Madre >:V"
 input <- getLine
 let response = if input == "yes" || input == "y" then True else False-}
