module Rot13 where

import Data.Char

rot13 :: String -> String
rot13 = map (\c -> if isLetter c then rotate c else c)

rotate :: Char -> Char
rotate c
    | rotated < lowerBound = chr $ rotated + lowerBound
    | otherwise            = chr rotated
        where rotated      = (ord c + 13) `mod` upperBound
              lowerBound   = if isUpper c then ord 'A' else ord 'a'
              upperBound   = (if isUpper c then ord 'Z' else ord 'z') + 1
