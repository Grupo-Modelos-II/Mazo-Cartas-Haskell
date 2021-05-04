import Operations
import Game

main = do

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
  print "Simbolo de la carta:"
  symbol <- getLine
  print(preguntarValor symbol getMallet)

 putStr "Repetir Proceso? Hijo de tu chingada Madre >:V\n"
 input <- getLine
 if input == "yes" || input == "y" then main else putStrLn "Chauuu"


