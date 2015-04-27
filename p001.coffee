## If we list all the natural numbers below 10 that are multiples of 3 or 5,
## we get 3, 5, 6 and 9. The sum of these multiples is 23.

## Find the sum of all the multiples of 3 or 5 below 1000.

mult_3_or_5 = (n) -> n % 3 == 0 or n % 5 == 0

sum = (ll) -> total = 0; total += i for i in ll; total

below = (x) -> x - 1

multiples_of_3_or_5 = (n) -> i for i in [1..n] when mult_3_or_5(i)

sum_all_multiples_of_3_or_5_below_n = (n) -> sum(multiples_of_3_or_5(below(n)))

alert(sum_all_multiples_of_3_or_5_below_n(10))    # 23

alert(sum_all_multiples_of_3_or_5_below_n(1000))  # 233168
