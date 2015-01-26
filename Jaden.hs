import Data.Char (toUpper)
upperFirst :: String -> String
upperFirst [] = []
upperFirst (x:xs) = toUpper x : xs
