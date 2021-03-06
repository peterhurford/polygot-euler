### If we list all the natural numbers below 10 that are multiples of 3 or 5,
### we get 3, 5, 6 and 9. The sum of these multiples is 23.

### Find the sum of all the multiples of 3 or 5 below 1000.
sum_all_multiples_of_3_or_5_below_n(n) =
  sum(filter(x -> x % 3 == 0 || x % 5 == 0, [1:n-1]))

println(sum_all_multiples_of_3_or_5_below_n(10))   # 23
println(sum_all_multiples_of_3_or_5_below_n(1000)) # 233168
