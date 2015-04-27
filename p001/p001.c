#include <stdio.h>

// If we list all the natural numbers below 10 that are multiples of 3 or 5,
// we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

int sum_all_multiples_of_3_or_5_below_n(int n) {
  int total = 0;
  while (n >= 0) {
    n--;
    if (n % 3 == 0 || n % 5 == 0) { total += n; }
  }
  return(total);
}

int main() {
  printf("%d", sum_all_multiples_of_3_or_5_below_n(10));   // 23
  printf("\n");
  printf("%d", sum_all_multiples_of_3_or_5_below_n(1000)); // 233168
  printf("\n");
  return 0;
}

