module Divisors where

divisors :: Integral a => a -> Int
divisors x = divisors' x 1 0
  where
    divisors' :: Integral a => a -> a -> Int -> Int
    divisors' x n c
      | n == x = c + 1
      | x `mod` n == 0 = divisors' x (n+1) (c+1)
      | otherwise = divisors' x (n+1) c


divisors'' :: Integral a => a -> Int
divisors'' x = foldr (\n acc -> acc + if x `mod` n == 0 then 1 else 0) 0 [1..x]
