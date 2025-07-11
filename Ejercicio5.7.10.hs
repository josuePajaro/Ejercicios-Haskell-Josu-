-- modifique el programa del cifrado césar para que tambien maneje letras mayúsculas.

import Data.Char

let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)

shift :: Int -> Char -> Char
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | isAlpha c = int2let(-32 + ((let2int c + (n+32)) `mod` 26))
          | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]
