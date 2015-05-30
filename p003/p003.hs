-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143?

isPrime :: Int -> Bool
isPrime n = (null [ x | x <- [2..n-1], (mod n x) == 0])

largestPrimeFactor :: Int -> Int
largestPrimeFactor n = (maximum [ x | x <- [2..n-1], (mod n x) == 0, isPrime x])

largestPrimeFactor 13195  -- 29
largestPrimeFactor 600851475143
-- Super slow because I can't restrict by square root because of Types.
