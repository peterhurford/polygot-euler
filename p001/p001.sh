#!/bin/bash

### If we list all the natural numbers below 10 that are multiples of 3 or 5,
### we get 3, 5, 6 and 9. The sum of these multiples is 23.

### Find the sum of all the multiples of 3 or 5 below 1000.

sum_all_multiples_of_3_or_5_below_n() {
  local total=0
  local n=$1
  while [ $n -ge 0 ]
  do
    n=$[$n - 1]
    if [ $[$n % 3] -eq 0 ] || [ $[$n % 5] -eq 0 ]; then
      total=$[$total + $n]
    fi
  done
  echo $total
}

sum_all_multiples_of_3_or_5_below_n 10    # 23

sum_all_multiples_of_3_or_5_below_n 1000  # 233168
