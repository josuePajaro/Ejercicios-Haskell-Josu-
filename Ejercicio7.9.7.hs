{-
Modifique el ejemplo del transmisor de cadena binaria para detectar errores de transmisión simples utilizando
el concepto de bits de paridad. Es decir, cada número binario de ocho bits producido durante la codificación
se extiende con un bit de paridad, establecido en uno si el número contiene un número impar de unos,
y en cero en caso contrario. A su vez, cada número binario de nueve bits resultante consumido durante la decodificación
se comprueba para garantizar que su bit de paridad sea correcto, descartándose el bit de paridad si este es el caso,
y reportándose un error de paridad en caso contrario.

Sugerencia: la función de biblioteca error:: String -> a muestra la cadena dada como un mensaje de error y finaliza el programa;
 el tipo de resultado polimórfico garantiza que error se pueda usar en cualquier contexto
-}

import Data.Char
type Bit = Int

bin2int :: [Bit] -> Int
bin2int = foldr (\x y -> x + 2*y) 0

int2bin :: Int -> [Bit]
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

make8 :: [Bit] -> [Bit]
make8 bits = take 8 (bits ++ repeat 0)

parityBit :: [Bit] -> Bit
parityBit bits = sum bits `mod` 2

addParity :: [Bit] -> [Bit]
addParity bits = bits ++ [parityBit bits]

checkParity :: [Bit] -> [Bit]
checkParity bits
    | parityBit dataBits == parity = dataBits
    | otherwise = error "Error de paridad detectado en la transmisión"
  where
    dataBits = take 8 bits
    parity   = last bits

encode :: String -> [Bit]
encode = concat . map addParity . map (make8 . int2bin . ord)

chop9 :: [Bit] -> [[Bit]]
chop9 [] = []
chop9 bits = take 9 bits : chop9 (drop 9 bits)

decode :: [Bit] -> String
decode = map (chr . bin2int . checkParity) . chop9

channel :: [Bit] -> [Bit]
channel = id

transmit :: String -> String
transmit = decode . channel . encode
