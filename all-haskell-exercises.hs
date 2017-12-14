
-- merges --

quicksort [] = []
quicksort (x:xs) = quicksort small ++ (x : quicksort large)
   where small = [y | y <- xs, y <= x]
         large = [y | y <- xs, y > x]


-- lista 2--

bissexto :: Int -> Bool
bissexto ano | mod ano 4 == 0 && (mod ano 100 /= 0 || mod ano 400 == 0) = True
			 | otherwise = False


isSquare :: Int -> Bool
isSquare n = truncate(sqrt(x)) * truncate(sqrt(x)) == n
             where x = fromIntegral n


mdc :: Int -> Int -> Int
mdc m n | m == 0  = n
		| m > 0  = mdc ( n `mod` m) m   


collatz n
     | mod n 2 == 0 = div n 2
     | otherwise =  3 * n + 1

collatzList :: Int -> [Int]
collatzList n | n < 1 = error "Cannot have negative number"
				| n == 1 = [n]
				| otherwise = n:collatzList (collatz n)


-- lista 3--

dropEvery :: [a] -> Int -> [a]
dropEvery list count = helper list count count
  where helper [] _ _ = []
        helper (x:xs) count 1 = helper xs count count
        helper (x:xs) count n = x : (helper xs count (n - 1))



rotate xs n | n >= 0 = drop n xs ++ take n xs
            | n < 0 = drop len xs ++ take len xs
                      where len = n+length xs

-- chic --

digitos :: Int -> Int
digitos n
		| n >= 10 = digitos ((quot n 10) + (mod n 10))
		| otherwise = n


contem :: Int -> Int -> Bool
contem n x
	| n < 10 = n == x
	| (mod n 10) == x = True
	| otherwise = contem (quot n 10) x

chic :: Int -> Bool
chic n = contem n (digitos n)



-- lista 4--

goldbach a = head $
                     filter (\(x,y) -> isPrime x && isPrime y) $
                     map (\e -> (e, a - e)) [1,3..a `div` 2]
 where
 factors a = filter (isFactor a) [2..a-1]
 isFactor a b = a `mod` b == 0
 isPrime a = null $ factors a

mergesort [] = [] 
mergesort [a] = [a]
mergesort a = let pulka = length a `div` 2 in merge (mergesort $ take pulka a) (mergesort $ drop pulka a) 

merge a [] = a
merge [] a = a
merge (a:ra) (b:rb) = if a > b then ([b] ++ (merge (a:ra) (rb))) else ([a] ++ (merge (ra) (b:rb)))


fatorial n
		| n == 0 = 1
		| n > 0 = n * fatorial(n - 1)


cosseno :: Double ->  Double
cosseno n = sum [((-1) ** x) / (fatorial (2 * x)) | x <- [0..n]]


--(\x y -> x^2 + y^2) 3 5
