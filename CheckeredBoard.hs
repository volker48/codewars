import Data.List (intersperse, intercalate)

checkeredBoard :: Int -> Maybe String
checkeredBoard n 
  | n < 2 = Nothing
  | otherwise = Just board
  where squares = makeSquares n
        spaced = addSpaces n squares
        board = intercalate "\n" spaced

makeSquares :: Int -> String
makeSquares n
  | even n = evenSquares n n
  | otherwise = take numSquares (cycle "■□")
  where numSquares = n ^ 2
        evenSquares :: Int -> Int -> String
        evenSquares _ 0 = []
        evenSquares size count
            | even count = take size (cycle "□■") ++ evenSquares size (count - 1)
            | otherwise = take size (cycle "■□") ++ evenSquares size (count - 1)
            
addSpaces :: Int -> String -> [String]
addSpaces _ [] = []
addSpaces n squares = spacesAdded : addSpaces n rest
    where (current, rest) = splitAt n squares
          spacesAdded = intersperse ' ' current
