module Split where

splitInteger :: Int -> Int -> [Int]
splitInteger x 1 = [x]
splitInteger x y 
  | x `mod` y == 0 = take y $ repeat $ x `div` y
  | otherwise = go x y
  where go :: Int -> Int -> [Int]
        go x y = 
