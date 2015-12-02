# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

primes = [2]
next = 3

def isPrime(n):
	for i in primes:
		if n % i == 0:
			return False
	return True
	
while (len(primes) < 10001):
	if isPrime(next):
		primes.append(next)
	next += 2

print(primes[10000])