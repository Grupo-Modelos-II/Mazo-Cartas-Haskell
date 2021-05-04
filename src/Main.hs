import Operations
import System.Random(randomRIO)

main = do
 r <- randomRIO(0, 51) :: IO Int
 print r
{-- main = menu -}
