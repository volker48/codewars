module Codewars.Kata.Summing where
import Data.List(foldl')

f :: Integer -> Integer -> Integer
f n m = foldl' (\acc x-> acc + (mod x m)) 0 [1..n]
