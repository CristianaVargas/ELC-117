-- 1) A saída revela se o número digitado é par ou não 
isEven :: Int -> Bool
isEven n = mod n 2 == 0

-- 2)
somaquad :: Int -> Int -> Int
somaquad x y = x*x + y*y

-- 3)
doubleFirst :: [Int] -> Int
doubleFirst list = head list *head list

-- 4)
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = head x == head y

-- 5)
addName :: [String] -> [String]
addName name = map ("Mr " ++) name

-- 6)
cont :: [Char] -> Int
cont x =length (filter (== ' ') x ) 

-- 7)
eqw :: [Float] -> [Float]
eqw x = map (\n -> (3*n*n + 2/n +1)) x

-- 8)
idade :: [Int] -> [Int]
idade x = map (2015-) (filter (>1970) x)

-- 9)
serie :: Double -> [Double] -> Double
serie x list = sum( map (\n -> (n/x)) list )

-- 10)
charFound :: Char -> String -> Bool
charFound c p = c `elem` p

-- 11)
htmlListItems :: [String] -> [String] 
htmlListItems x = map (\n -> "<LI>" ++ n ++"</LI>") x

-- 12)
--takeWhile :: (a -> Bool) -> [a] -> [a] 
--takeWhile (<2) [1,2,3,4,5]

-- 13) 
acharMeninas :: [String] -> [String]
acharMeninas x = filter(\n -> last(n) == 'a') (map (takeWhile (/=' '))x)


