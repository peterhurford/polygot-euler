<?php
// Each new term in the Fibonacci sequence is generated by adding the
// previous two terms. By starting with 1 and 2, the first 10 terms will be:
// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

// By considering the terms in the Fibonacci sequence whose values do not
// exceed four million, find the sum of the even-valued terms.

function fib() {
  $a = 1;
  $b = 1;
  while (true) {
    yield $a;
    $oa = $a;
    $a = $b;
    $b = $oa + $b;
  }
}

function even($seq) {
  foreach ($seq as $i) {
    if ($i % 2 != 0) {
      yield $i;
    }
  }
}

function under($seq, $limit) {
  foreach ($seq as $i) {
    if ($i > $limit) { break; }
    yield $i;
  }
}

function sum($seq) {
  $total = 0;
  foreach ($seq as $i) { $total += $i; }
  return($total);
}

echo(sum(even(under(fib(), 4e6))));   # 4613732
