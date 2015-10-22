### The prime factors of 13195 are 5, 7, 13 and 29.
### What is the largest prime factor of the number 600851475143?

function is_prime(n)
  if (n == 1 || n == 2)
    return true
  end
  for i in [2:n-1]
    if (n % i == 0)
      return false
    end
  end
  true
end

roots(n) = filter(x -> n % x == 0, [2:floor(sqrt(n))])

largest_prime_factor(n) = maximum(filter(is_prime, filter(x -> n % x == 0, roots(n))))

println(largest_prime_factor(13195))           # 29
println(largest_prime_factor(600851475143))    # 6857
