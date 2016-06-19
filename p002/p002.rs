// Each new term in the Fibonacci sequence is generated by adding the
// previous two terms. By starting with 1 and 2, the first 10 terms will be:
// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

// By considering the terms in the Fibonacci sequence whose values do not
// exceed four million, find the sum of the even-valued terms.

// Stolen from http://rustbyexample.com/trait/iter.html
struct Fibonacci {
  curr: i32,
  next: i32
}

impl Iterator for Fibonacci {
  type Item = i32;
  fn next(&mut self) -> Option<i32> {
    let new_next = self.curr + self.next;
    self.curr = self.next;
    self.next = new_next;
    Some(self.curr)
  }
}

fn fibonacci() -> Fibonacci {
  Fibonacci { curr: 1, next: 1 }
}

fn sum_even_fibs_with_limit(limit: i32) -> i32 {
  fibonacci().take_while(|&x| x <= limit).filter(|&x| x % 2 == 0).fold(0, |sum, x| sum + x)
}

fn main() {
  println!("{}", sum_even_fibs_with_limit(4000000)) // 4613732
}