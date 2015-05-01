-- If we list all the natural numbers below 10 that are multiples of 3 or 5,
-- we get 3, 5, 6 and 9. The sum of these multiples is 23.

-- Find the sum of all the multiples of 3 or 5 below 1000.

multiple3or5 :: Int -> Bool
multiple3or5 x = (mod x 3) == 0 || (mod x 5) == 0

sumAllMultiplesOf3Or5BelowN :: Int -> Int
sumAllMultiplesOf3Or5BelowN n = sum (filter multiple3or5 (init [0..n]))

sumAllMultiplesOf3Or5BelowN 10    -- 23

sumAllMultiplesOf3Or5BelowN 1000  -- 233168
