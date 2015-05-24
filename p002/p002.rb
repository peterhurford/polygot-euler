### Each new term in the Fibonacci sequence is generated by adding the
### previous two terms. By starting with 1 and 2, the first 10 terms will be:
### 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

### By considering the terms in the Fibonacci sequence whose values do not
### exceed four million, find the sum of the even-valued terms.

fib = Enumerator.new do |list|
  a = 1
  b = 1
  loop do
    list << a
    a, b = b, a + b
  end
end

fib.take_while { |x| x < 4000000 }.reject{ |x| x.odd? }.inject(:+)
# 4613732
