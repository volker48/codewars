module Codewars.Kata.FancyReplace where

getNumber :: Integer -> Either Integer String
getNumber n 
  | n `mod` 15 == 0 = Right "BOTH"
  | n `mod` 5 == 0 = Right "FIVE"
  | n `mod` 3 == 0 = Right "THREE"
  | otherwise = Left n

getNumberRange :: Integer -> Integer -> [Either Integer String]
getNumberRange f l
  | f < l = map getNumber [f..l]
  | otherwise = map getNumber [f, f-1..l]
  
