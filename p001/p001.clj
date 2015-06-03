; If we list all the natural numbers below 10 that are multiples of 3 or 5,
; we get 3, 5, 6 and 9. The sum of these multiples is 23.

; Find the sum of all the multiples of 3 or 5 below 1000.

(def multiplesOf3or5Below (fn [n] (reduce + (filter
  (fn [x] (or
    (= (mod x 5) 0)
    (= (mod x 3) 0)
  )) 
  (range n)
))))

(multiplesOf3or5Below 10)
; 23

(multiplesOf3or5Below 1000)
; 233168
