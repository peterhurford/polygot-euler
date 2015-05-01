// If we list all the natural numbers below 10 that are multiples of 3 or 5,
// we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

import scala.language.postfixOps

def multiple3or5(n: Int): Boolean = {
  n % 3 == 0 || n % 5 == 0
}

def sumAllMultiplesOf3Or5BelowN(n: Int): Int = {
  (1 to n-1) filter multiple3or5 sum
}

sumAllMultiplesOf3Or5BelowN(10)    // 23

sumAllMultiplesOf3Or5BelowN(1000)  // 233168
