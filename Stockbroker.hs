module Codewars.G964.Stockbroker where

data Status = Buy | Sell deriving (Show)

data Order = Order {
 quote :: String,
 quantity :: Int,
 price :: Double,
 status :: Status
} deriving (Show)

split :: Char -> String -> [String]
split delimiter str = case dropWhile (== delimiter) str of
                           "" -> []
                           str' -> front : split delimiter remainder
                                   where (front, remainder) = break (== delimiter) str'

parseStatus :: String -> Maybe Status
parseStatus "B" = Just Buy
parseStatus "S" = Just Sell
parseStatus _ = Nothing
