module Codewars.Kata.Grey where
import Numeric (showHex)

shadesOfGrey :: Int -> [String]
shadesOfGrey = reverse . shadesOfGrey'
  where 
    shadesOfGrey' :: Int -> [String]
    shadesOfGrey' x
       | x <= 0    = []
       | x < 255   = shadesOfGrey'' x :  shadesOfGrey' (x - 1)
       | otherwise = shadesOfGrey' 254
       where
        shadesOfGrey'' :: Int -> String
        shadesOfGrey'' x = concat $ "#" : (replicate 3 $ convertToPaddedHex x)
            where
                convertToPaddedHex :: Int -> String
                convertToPaddedHex x
                  | x < 16    = "0" ++ showHex x ""
                  | otherwise = showHex x ""
