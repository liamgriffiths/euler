-- Find the difference between the sum of the squares of the first one
-- hundred natural numbers and the square of the sum.

main = do
    let nums = [1..100]
    print $ (sum nums ^2) - (sum $ map (^2) nums)
