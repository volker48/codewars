joinS :: [String] -> String -> String
joinS [] _ = ""
joinS xs sep = foldl1 (\a b -> a ++ sep ++ b) xs
