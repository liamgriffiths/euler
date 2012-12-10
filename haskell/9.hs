-- There exists exactly one Pythagorean triplet for which a + b + c = 1000..
-- Find the product abc.

main = do
    print $ pytriplets 1000

pytriplets :: Integer -> [Integer]
pytriplets n = do
    [a * b * c | a <- [1..n], b <- [1..n], c <- [1..n], a + b + c == n, a^2 + b^2 == c^2]
