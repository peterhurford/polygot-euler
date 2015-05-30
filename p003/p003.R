### The prime factors of 13195 are 5, 7, 13 and 29.
### What is the largest prime factor of the number 600851475143?

library(magrittr)
factors <- function(n) {
  n %>% sqrt %>% floor %>% seq(2, .) %>%
    Filter(function(i) n %% i == 0, .)
}

is_prime <- function(n) {
  if (n == 1 || n == 2) { return(TRUE) }
  for (i in seq(2, n-1)) {
    if (n %% i == 0) { return(FALSE) }
  }
  TRUE
}

prime_factors <- function(n) {
  n %>% factors %>% Filter(is_prime, .)
}

largest_prime_factor <- function(n) {
  n %>% prime_factors %>% max
}

prime_factors(13195)
# 5 7 13 29
largest_prime_factor(13195)
# 29
largest_prime_factor(600851475143)
# 6857
