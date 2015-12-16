
def factors(n):
	step = 1
	if n % 2 > 0: step = 2 #skip even numbers
	return set(reduce(list.__add__, ([i, n/i] for i in range(1, int(n**0.5) + 1, step) if n % i == 0)))

triangle = 1
next = 2

while len(factors((triangle))) < 500:
	triangle += next
	next += 1

print triangle
