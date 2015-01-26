module Numbering where

number :: [String] -> [String]
number [] = []
number lst = number' 1 lst where 
  number' :: Int -> [String] -> [String]
  number' _ [] = []
  number' num (x:xs) = ((show num) ++ ": " ++ x) : number' (num + 1) xs
