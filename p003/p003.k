/  The prime factors of 13195 are 5, 7, 13 and 29.
/  What is the largest prime factor of the number 600851475143?

divs: {&~(x!'!1+_sqrt x)}
lstPrmFac: {|/(divs x)@&{(x>1)&&/x!'2_!1+_sqrt x}/:(divs x)}

/   Explanation TODO

lstPrmFac 13195
/  29
lstPrmFac 600851475143
/  6857
