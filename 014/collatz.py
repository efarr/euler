def collatz(n):   
	count = 1 
	while n > 1:
		count += 1
		n = n / 2 if n % 2 == 0 else 3 * n + 1
	return count

max = 1
num = 1
for i in range(2,1000000):
	c = collatz(i)
	if c > max:
		max = c
		num = i

print num