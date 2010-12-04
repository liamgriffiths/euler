#!/usr/bin/env runghc

-- Find the sum of the digits in the number 100!

main = print $ sum $ digits $ facto(100)


facto n = foldl (*) 1 [1..n]

digits = map (read . return) . show
