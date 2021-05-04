module Operations where

import Game

pedirCarta::Card->Mallet
pedirCarta = addCard

buscarCarta::Card->Mallet->Card
buscarCarta = findCard

preguntarValor::Symbol->Mallet->Value
preguntarValor = getValueCard

menuOpciones::String
menuOpciones = "Escoja una opción: \n1) Pedir Carta \n2) Buscar carta en su mazo \n3) Preguntar por valor de la carta\n"

{-menu opcion = do
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
  print(preguntarValor symbol getMallet)
 putStr "Repetir Proceso? Hijo de tu chingada Madre >:V"
 input <- getLine
 if input == "yes" || input == "y" then menu else putStr "Chauuu"-}