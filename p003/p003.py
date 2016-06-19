### The prime factors of 13195 are 5, 7, 13 and 29.
### What is the largest prime factor of the number 600851475143?

import math

def is_prime(n):
  if n == 1 or n == 2:
    return True
  for i in range(2, n):
    if n % i == 0:
      return False
  return True

def roots(n):
  return filter(lambda x: n % x == 0, range(2, int(math.sqrt(n))))

def largest_prime_factor(n):
  return max(filter(is_prime, filter(lambda x: n % x == 0, roots(n))))

print(largest_prime_factor(13195))           # 29
print(largest_prime_factor(600851475143))    # 6857
