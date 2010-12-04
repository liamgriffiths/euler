#!/usr/bin/env runghc

-- Find the sum of all the multiples of 3 or 5 below 1000.

main = print $ sum $ filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0 ) [1..999]
