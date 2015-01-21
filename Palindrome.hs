import Data.Char (toLower, isAlphaNum)

isPalindrome :: String -> Bool
isPalindrome xs =
  let onlyLetters = map toLower $ filter isAlphaNum xs
  in onlyLetters == reverse onlyLetters
