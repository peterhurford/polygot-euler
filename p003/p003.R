### The prime factors of 13195 are 5, 7, 13 and 29.
### What is the largest prime factor of the number 600851475143?

largest_prime_factor <- function(n) {
  if (n <= 3) { return(n) }
  for (j in c(2, 3)) { if (n %% j == 0) { return(prime_factor(n / j)) }}
  k <- floor(sqrt(n))
  if (k > 5) {
    for (i in seq(5, k, by = 6)) {
      for (j in c(i, i + 2)) { if (n %% j == 0) { return(prime_factor(n / j)) }}
    }
  }
  n
}

largest_prime_factor(13195)
# 29
largest_prime_factor(600851475143)
# 6857
