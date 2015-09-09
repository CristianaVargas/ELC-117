-- 1)
addSuffix :: String -> [String] -> [String]
addSuffix c str = [x++c | x <- str]

-- 2)
addSuffixRec :: String -> [String] -> [String]
addSuffixRec _ [] = []
addSuffixRec c (x:xs) = (x ++ c) : addSuffixRec c xs

-- 3)
countShorts :: [String] -> Int
countShorts [] = 0
countShorts (x:xs) 
	|length (x) < 5 = 1 + countShorts xs
	|length (x) >= 5 = countShorts xs
	
-- 4) 
countShortsRec :: [String] -> Int
countShortsRec [] = 0
countShortsRec str = length ([x | x <- str, length x < 5])

-- 5)
ciclo :: Int -> [Int] -> [Int]
ciclo 0 _ = []
ciclo x list = list ++ ciclo (x-1) list

-- 6)
combine :: [Int] -> [String] -> [(Int,String)]
combine [] _ = []
combine _ [] = []
combine x str = ((head x) , (head str)) : combine (tail x) (tail str)

-- 7)
numera :: [String] -> [(Int,String)]
numera [] = []
numera str = aux [1..(length str)] str

aux :: [Int] -> [String] -> [(Int,String)]
aux (n:ns) (x:xs) = (n , x) : aux ns xs

-- 8)
-- a) A lista x vai de 1 até 5 e considera apenas números pares.
--	A lista y soma em 1 o atual número x e se for ímpar imprime na saída 
--	a combinação de x e y.

-- b) Combina a lista a com a lista b em suas posições correspondentes.

-- c) Concatena todos os caracteres pertencentes a "aeiou" da string a utilizando 
--	o hífen.

-- 9)
crossProduct :: [a] -> [b] -> [(a,b)]
crossProduct _ [] = []
crossProduct [] _ = []
crossProduct (x:xs) y = pairWithAll x y ++ crossProduct xs y

pairWithAll :: a -> [b] -> [(a,b)]
pairWithAll _ [] = []
pairWithAll x (y:ys) = (x,y) : pairWithAll x ys

-- 10) 
--genRects :: Int -> (Int,Int) -> [(Float,Float,Float,Float)]
--genRects N (x,y) = 

-- 11)
func :: [(a,b)] -> ([a],[b])
func [] = ([],[])
func [(x,y)] = (aux1 [(x,y)] , aux2 [(x,y)])

aux1 :: [(a,b)] -> [a]
aux1 [] = []
aux1 (x:xs) = fst x : aux1 xs

aux2 :: [(a,b)] -> [b]
aux2 [] = []
aux2 (y:ys) = snd y : aux2 ys

-- 12)
funcList :: [(a,b)] -> ([a],[b])
funcList z = ([ fst x | x <- z], [ snd x | x <- z])

-- 13)
funcAlt :: [(a,b)] -> ([a],[b])
funcAlt [] = ([],[])
funcAlt x = (map (\(a,b) -> a) x , map (\(a,b) -> b) x )
