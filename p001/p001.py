### If we list all the natural numbers below 10 that are multiples of 3 or 5,
### we get 3, 5, 6 and 9. The sum of these multiples is 23.

### Find the sum of all the multiples of 3 or 5 below 1000.

def sum_all_multiples_of_3_or_5_below_n(n):
  return(sum(x for x in range(n) if x % 3 == 0 or x % 5 == 0))

sum_all_multiples_of_3_or_5_below_n(10)    # 23

sum_all_multiples_of_3_or_5_below_n(1000)  # 233168
