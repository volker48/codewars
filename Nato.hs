module NATO.Alphabet where
import Data.Char (toUpper)

letters :: [(Char, String)]
letters =  [
    ('A', "Alpha"),  ('B', "Bravo"),   ('C', "Charlie"),
    ('D', "Delta"),  ('E', "Echo"),    ('F', "Foxtrot"),
    ('G', "Golf"),   ('H', "Hotel"),   ('I', "India"),
    ('J', "Juliett"),('K', "Kilo"),    ('L', "Lima"),
    ('M', "Mike"),   ('N', "November"),('O', "Oscar"),
    ('P', "Papa"),   ('Q', "Quebec"),  ('R', "Romeo"),
    ('S', "Sierra"), ('T', "Tango"),   ('U', "Uniform"),
    ('V', "Victor"), ('W', "Whiskey"), ('X', "X-ray"),
    ('Y', "Yankee"), ('Z', "Zulu")
    ]

nato :: String -> String
nato str = unwords $ map nato' $ filter (/= ' ') str where
    nato' :: Char -> String
    nato' c  
      | c == ' ' = ""
      | otherwise = maybe [c] id (lookup (toUpper c) letters)
