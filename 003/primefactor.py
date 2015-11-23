# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

largestPrime = 2
remaining = 600851475143

while largestPrime < remaining:
    if remaining % largestPrime == 0:
        remaining = remaining / largestPrime
    else:
        largestPrime += 1

print(largestPrime)
