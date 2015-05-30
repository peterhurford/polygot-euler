/  The prime factors of 13195 are 5, 7, 13 and 29.
/  What is the largest prime factor of the number 600851475143?

divs: {&~(x!'!1+_sqrt x)}
/  Function to get all the divisors
/  {} defines a function
/  _sqrt x does the square root of x.
/ 1+ adds one
/ ! enumerates a list from 1 to n-1 (that's why we need to add 1)
/ x!'l will do x mod i for every i in list l
/ ~ will negate the list, turning 0 into 1 and non-0 into 0.
/   ...this returns a list where 1 are all the elements that divide into x evenly.
/ & will return the list indicies that are 1 (the numbers that divide into x evenly)

lstPrmFac: {|/(divs x)@&{(x>1)&&/x!'2_!1+_sqrt x}/:(divs x)}
/ divs x will get all the divisors of x (see above)
/ {fn}/:l implements the function defined in {} over the divisors.
/ We saw before that !1+_sqrt x enumerates a list from 1 to the square root of x
/ 2_ drops the first two elements from the list (1 and 2)
/ We saw before that x!' does modulus over the list.
/ (x>1)&&/ means the function will only be implemented if x>1
/ ...we now have checked all the divisors to see whether they are prime.
/ ...we then use @& to get the divisors that are prime. 


lstPrmFac 13195
/  29
lstPrmFac 600851475143
/  6857
