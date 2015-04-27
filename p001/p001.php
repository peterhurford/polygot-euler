<?php
// If we list all the natural numbers below 10 that are multiples of 3 or 5,
// we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

function multiple_3_or_5($n) {
  return $n % 3 == 0 || $n % 5 == 0;
}

function sum_all_multiples_of_3_or_5_below_n($n) {
  return array_sum(array_filter(range(0, $n - 1), "multiple_3_or_5"));
}

echo(sum_all_multiples_of_3_or_5_below_n(10));    // 23

echo(sum_all_multiples_of_3_or_5_below_n(1000));  // 233168
