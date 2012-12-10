-- Find the largest palindrome made from the product of two 3-digit numbers.

main = do
    print $ maximum $ filter isPalindrome (numberList 900 999)

numberList :: Integer -> Integer -> [Integer]
numberList start finish = do 
    foldr (++) [] $ map (\x -> map (*x) [start..finish]) [start..finish]

isPalindrome :: Integer -> Bool
isPalindrome n = if (show n) == reverse (show n) then True else False
