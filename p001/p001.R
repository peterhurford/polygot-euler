### If we list all the natural numbers below 10 that are multiples of 3 or 5,
### we get 3, 5, 6 and 9. The sum of these multiples is 23.

### Find the sum of all the multiples of 3 or 5 below 1000.

`is_multiple?` <- function(x, m) { x %% m == 0 }

all_multiples_of_3_and_5 <- function(n) {
  Filter(
    function(x) { `is_multiple?`(x, 3) || `is_multiple?`(x, 5) },
    seq(n)
  )
}

below <- function(n) { n - 1 }

sum_all_multiples_of_3_or_5_below_n <- function(n) {
  sum(all_multiples_of_3_and_5(below(n))) 
}

sum_all_multiples_of_3_or_5_below_n(10)    # 23

sum_all_multiples_of_3_or_5_below_n(1000)  # 233168
