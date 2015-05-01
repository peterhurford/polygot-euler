// If we list all the natural numbers below 10 that are multiples of 3 or 5,
// we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

package main
import "fmt"

func sumAllMultiplesOf3or5BelowN(n int) int{
  total := 0
  for x:= n-1; x >= 0; x-- {
    if (x % 3 == 0 || x % 5 == 0) {
      total += x
    }
  }
  return total
}

func main() {
  fmt.Println(sumAllMultiplesOf3or5BelowN(10))    # 23
  fmt.Println(sumAllMultiplesOf3or5BelowN(1000))  # 233168
}
