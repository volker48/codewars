
-- takeDeeper :: [a] -> [a]
-- takeDeeper [] = []
-- takeDeeper [x] = [x]
-- takeDeeper xs = chunk 0 xs

chunk :: [a] -> [[a]]
chunk [] = []
chunk xs = chunk' 0 xs
  where
    chunk' :: Int -> [a] -> [[a]]
    chunk' n xs
      | null $ drop n xs = []
      | otherwise = drop n xs : chunk' (n+1) xs
