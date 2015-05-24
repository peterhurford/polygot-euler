## If we list all the natural numbers below 10 that are multiples of 3 or 5,
## we get 3, 5, 6 and 9. The sum of these multiples is 23.

## Find the sum of all the multiples of 3 or 5 below 1000.

sum_all_multiples_of_3_or_5_below_n = (n) ->
  (i for i in [1..n-1] when i % 3 == 0 or i % 5 == 0).reduce (a, b) -> a + b

alert(sum_all_multiples_of_3_or_5_below_n(10))    # 23

alert(sum_all_multiples_of_3_or_5_below_n(1000))  # 233168
