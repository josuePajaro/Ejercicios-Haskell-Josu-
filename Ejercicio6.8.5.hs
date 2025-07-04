{-
Utilizando las definiciones recursivas dadas en este capitulo, muestre como se elvaluan length [1,2,3], drop 3 [1,2,3,4,5],
e init [1,2,3]

length :: [a] -> Int
length [] = 0
length (_:xs) = 1 + length xs

entonces:
length [1,2,3]
= {aplicando length}
1 + length [2,3]
= {aplicando length}
1 + (1 + length [3])
= {aplicando length}
1 + (1 +(1 + length []))
= {aplicando length}
1 + (1+ (1 + 0))
= {aplicando +}
3

drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop _ [] = []
drop n (_:xs) = drop (n-1) xs

entonces:
drop 3 [1,2,3,4,5] = drop 3 1 : [2,3,4,5,6]
= {aplicando drop}
drop 2 2 : [3,4,5,6]
= {aplicando drop}
drop 1 3 : [4,5,6]
= {aplicando drop}
drop 0 4 : [5,6]
= {aplicando drop}
4 : [5,6] = [4,5,6]

init :: [a] -> [a]
init [_] = []
init (x:xs) = x : init xs

entonces:
init [1,2,3]
= {aplicando init}
1 : (init [2,3])
= {aplicando init}
1 : (2 : (init [3]))
= {aplicando init}
1 : ( 2 : [])
= [1,2]
-}
