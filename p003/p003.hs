-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143?

roots :: Int -> [Int]
roots n = [2..(floor $ sqrt $ realToFrac n)]

isPrime :: Int -> Bool
isPrime n = null [ x | x <- roots(n-1), n `mod` x == 0 ]

largestPrimeFactor :: Int -> Int
largestPrimeFactor n = maximum [ x | x <- roots(n-1), n `mod` x == 0, isPrime x]

main :: IO ()
main = do
  print $ largestPrimeFactor 13195         -- 29
  print $ largestPrimeFactor 600851475143  -- 6857
