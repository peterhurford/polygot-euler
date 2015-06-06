; If we list all the natural numbers below 10 that are multiples of 3 or 5,
; we get 3, 5, 6 and 9. The sum of these multiples is 23.

; Find the sum of all the multiples of 3 or 5 below 1000.

(defn multiplesOf3or5Below [n]
  (->> (range n)
    (filter #(or (zero? (mod % 5))
                 (zero? (mod % 3))))
    (reduce +)))

(multiplesOf3or5Below 10)
; 23

(multiplesOf3or5Below 1000)
; 233168
