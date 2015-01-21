module DragonCurve where
dragon :: Int -> String
dragon n
    | n >= 0 = dragon' 0 n "Fa"
    | otherwise = ""
    where
    dragon' :: Int -> Int -> String -> String
    dragon' cur n dr
      | cur == n = filter (\item -> item /= 'a' && item /= 'b') dr
      | otherwise = dragon' (cur+1) n $ foldr replacer [] dr

replacer :: Char -> String -> String
replacer 'a' acc = "aRbFR" ++ acc
replacer 'b' acc = "LFaLb" ++ acc
replacer other acc = other : acc
