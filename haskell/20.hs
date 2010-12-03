#!/usr/bin/runghc

-- Find the sum of the digits in the number 100!

facto :: Integer -> Integer
facto n = foldl (*) 1 [1..n]

digits :: Integer -> [Int]
digits = map (read . return) . show

main :: IO ()
main = print (sum(digits(facto(100))))
