### The prime factors of 13195 are 5, 7, 13 and 29.
### What is the largest prime factor of the number 600851475143?

import math

def largest_prime_factor(n):
  if n <= 3:
    return n
  for j in [2, 3]:
    if n % j == 0:
      return largest_prime_factor(n / j)
  for i in range(5, int(n ** 0.5), 6):
    for j in [i, i + 2]:
      if n % j == 0:
        return largest_prime_factor(n / j)
  return n

print(largest_prime_factor(13195))           # 29
print(largest_prime_factor(600851475143))    # 6857
