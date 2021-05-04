module Operations where

import Game

pedirCarta::Card->Mallet
pedirCarta = addCard

buscarCarta::ValueString->Mallet->Card
buscarCarta = findCard

preguntarValor::ValueString->Mallet->Int
preguntarValor = getNumericValueCard

menuOpciones::String
menuOpciones = "Escoja una opción: \n1) Pedir Carta \n2) Buscar carta \n3) Preguntar por valor de la carta\n"


menu = do

 putStr menuOpciones

 input <- getLine
 let option = read input ::Int

 if option == 1 then do
  print "Valor de la carta"
  value <- getLine
  print "Simbolo de la carta"
  symbol <- getLine
  print(pedirCarta(value, symbol))
 else if option == 2 then do
  print "Valor de la carta"
  value <- getLine
  print "Al mazo del jugador? (Y, N)"
  response <- getLine
  let isJugador = response == "Y"
  print(buscarCarta value (if isJugador then getMallet else getDeck))
 else do
  print "Valor en letras de la carta"
  symbol <- getLine
  print "Al mazo del jugador? (Y, N)"
  response <- getLine
  let isJugador = response == "Y"
  print(preguntarValor symbol (if isJugador then getMallet else getDeck))

 putStr "¿Repetir Proceso? (Y, N)\n"
 input <- getLine
 if input == "Y" then menu else putStrLn "Chauuu"