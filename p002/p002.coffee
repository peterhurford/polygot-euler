## Each new term in the Fibonacci sequence is generated by adding the
## previous two terms. By starting with 1 and 2, the first 10 terms will be:
## 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

## By considering the terms in the Fibonacci sequence whose values do not
## exceed four million, find the sum of the even-valued terms.

a = [1, 1]
while (a[a.length - 2] + a[a.length - 1] <= 4000000)
  a.push(a[a.length - 2] + a[a.length - 1])

(i for i in a when i % 2 == 0).reduce (a, b) -> a + b
# 4613732
