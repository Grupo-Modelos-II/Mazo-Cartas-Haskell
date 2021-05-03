import Operations

main = do
 input <- getLine
 let response = read input ::Int

 if response == 1 then do
  value <- getLine
  symbol <- getLine
  print(pedirCarta(value, symbol))
 else if response == 2 then do
  value <- getLine
  symbol <- getLine
  print(buscarCarta(value, symbol) getMallet)
 else do
  symbol <- getLine
  print(preguntarValor symbol mallet)
 putStr "Repetir Proceso? Hijo de tu chingada Madre >:V"
 input <- getLine
 if input == "yes" || input == "y" then main else putStr "Chauuu"
