import Operations
import System.Random
import Control.Monad (replicateM)

main = (randomIO :: IO Int) >>= print
-- main = menu