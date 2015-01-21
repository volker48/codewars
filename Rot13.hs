module Rot13 where

import Data.Char


rot13' = chr . (13 +) . ord

rot13 :: String -> String
rot13 = map (\c -> if isLetter c then rot13' c else c)
