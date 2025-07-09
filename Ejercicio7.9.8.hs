{-
Pruebe su nuevo programa transmisor de cadenas del ejercicio anterior utilizando un canal de comunicación defectuoso
que olvida el primer bit, que se puede modelar usando la función tail en listas de bits.
-}
-- La función Checkparity arrojará el mensaje de error ya que la condición parityBit dataBits == parity será falsa.  
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
channel = tail

transmit :: String -> String
transmit = decode . channel . encode