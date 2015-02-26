module Main where
import Rot13

main :: IO()
main = do
    inStr <- getLine
    let outStr = rot13 inStr
    putStrLn outStr
