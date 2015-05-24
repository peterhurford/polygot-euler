// If we list all the natural numbers below 10 that are multiples of 3 or 5,
// we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

// Note: this was written independently of the Coffeescript implementation.

sum_all_multiples_of_3_or_5_below_n = function(n) {
  var total = 0;
  while (n >= 0) {
    n--;
    if (n % 3 == 0 || n % 5 == 0) { total += n; }
  }
  return(total);
}

alert(sum_all_multiples_of_3_or_5_below_n(10))    // 23

alert(sum_all_multiples_of_3_or_5_below_n(1000))  // 233168
