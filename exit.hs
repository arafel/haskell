module Main where

import System.Exit (exitSuccess)
import Control.Monad (when)

main = do
    let condition = True
    when condition (putStrLn "Bailing out." >> exitSuccess)
    putStrLn "Continuing normally..."
