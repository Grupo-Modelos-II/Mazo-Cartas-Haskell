module Operations where

import Game

pedirCarta::Card->Mallet
pedirCarta = addCard

buscarCarta::Card->Mallet->Card
buscarCarta = findCard

preguntarValor::ValueString->Mallet->Int
preguntarValor = getNumericValueCard

menuOpciones::String
menuOpciones = "Escoja una opción: \n1) Pedir Carta \n2) Buscar carta en su mazo \n3) Preguntar por valor de la carta\n"


menu = do

 putStr menuOpciones

 input <- getLine
 let response = read input ::Int

 if response == 1 then do
  print "Valor de la carta:"
  value <- getLine
  print "Simbolo de la carta:"
  symbol <- getLine
  print(pedirCarta(value, symbol))
 else if response == 2 then do
  print "Valor de la carta:"
  value <- getLine
  print "Simbolo de la carta:"
  symbol <- getLine
  print(buscarCarta(value, symbol) getMallet)
 else do
  print "Valor en letras de la carta:"
  symbol <- getLine
  print(preguntarValor symbol getMallet)

 putStr "¿Repetir Proceso? (Y, N)\n"
 input <- getLine
 if input == "yes" || input == "y" then menu else putStrLn "Chauuu"