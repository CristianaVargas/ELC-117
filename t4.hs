-- 1)
eleva2 :: [Int] -> [Int]
eleva2 [] = []
eleva2 x = head x^2 : eleva2 (tail x)

-- 2)
contido :: Char -> String -> Bool
contido c "" = False
contido c x 
	|(head x) == c = True
	|otherwise = contido c (tail x)
	
-- 3)
semVogais :: String -> String
semVogais "" = ""
semVogais (a:xs)
   | (a == 'a') || (a == 'e') ||(a == 'i') ||(a == 'o') ||(a == 'u') || 
     (a == 'A') || (a == 'E') ||(a == 'I') ||(a == 'O') ||(a == 'U') = semVogais xs
   | otherwise = a:(semVogais xs)
	
-- 4)
translate :: [(Double,Double)] -> [(Double,Double)]
translate [] = []
translate ((x,y):xs) = (x+2,y+2):translate xs

-- 5)
geraTabela :: Int -> [(Int,Int)]
geraTabela 0 = []
geraTabela n = zip[1..n][x^2 | x <- [1..n]]
