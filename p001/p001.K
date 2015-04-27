/   If we list all the natural numbers below 10 that are multiples of 3 or 5,
/   we get 3, 5, 6 and 9. The sum of these multiples is 23.

/   Find the sum of all the multiples of 3 or 5 below 1000.

fn: {+/&|/~(!x)!/: 3 5}
/
/   {} makes function
/   +/ sums the list
/   & is "where", returns position of true and false
/   |/ returns one list with a logical OR of the two lists
/   ~ is "not", returns 1 if 0 and 0 if not 0
/   !x is a list from 0 to x-1
/   ! is modulus (yes, it's overloaded)
/   /: 3 5 does the prior method (modulus) over 3 and 5, making two lists -- one for !x % 3, and one for !x % 5.

fn 10    # 23

fn 1000  # 233168
