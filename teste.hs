isEven :: Int -> Bool
isEven n = mod n 2 == 0

somaquad :: Int -> Int -> Int
somaquad x y = x*x + y*y

doubleFirst :: [Int] -> Int
doubleFirst list = head list *head list

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = head x == head y

addName :: [String] -> [String]
addName name = map ("Mr " ++) name

cont :: [Char] -> Int
cont x =length (filter (== ' ') x ) 

eqw :: [Float] -> [Float]
eqw x = map (\n -> (3*n*n + 2/n +1)) x

idade :: [Int] -> [Int]
idade x = map (2015-) (filter (>1970) x)

serie :: Double -> [Double] -> Double
serie x list = sum( map (\n -> (n/x)) list )

charFound :: Char -> String -> Bool
charFound c p = c `elem` p

htmlListItems :: [String] -> [String] 
htmlListItems x = map (\n -> "<LI>" ++ n ++"</LI>") x

--takeWhile :: (a -> Bool) -> [a] -> [a] 
--takeWhile (<2) [1,2,3,4,5]

acharMeninas :: [String] -> [String]
acharMeninas x = filter(\n -> last(n) == 'a') (map (takeWhile (/=' '))x)
--acharMeninas x = last x 

