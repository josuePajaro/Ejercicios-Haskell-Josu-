{-
De forma similar a la función length, muestre como la función de biblioteca replicate :: Int -> a -> [a] que produce una lista
de elementos idénticos, se puede definir usando una compresión de lista. Por ejemplo:
replicate 3 True
[True, True, True]
-}

replicate' :: Int -> a -> [a]
replicate' n xs = [xs | _ <- [1..n]]