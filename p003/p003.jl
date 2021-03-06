### The prime factors of 13195 are 5, 7, 13 and 29.
### What is the largest prime factor of the number 600851475143?

function largest_prime_factor(n)
  if (n <= 3)
    return n
  end
  for j in [2, 3]
    if (n % j == 0)
      return largest_prime_factor(n / j)
    end
  end
  for i in collect(5 : 6 : floor(sqrt(n)))
    for j in [i, i + 2]
      if (n % j == 0)
        return largest_prime_factor(n / j)
      end
    end
  end
  n
end

println(largest_prime_factor(13195))           # 29
println(largest_prime_factor(600851475143))    # 6857
