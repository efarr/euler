# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
limit = 2000000
sieve = [True] * limit
sieve[0] = False
sieve[1] = False
primes = []

for i in range(2,limit):
	if sieve[i]:
		primes.append(i)
		for j in range(i*i, limit, i):
			sieve[j] = False

print(sum(primes))