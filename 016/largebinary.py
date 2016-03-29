def power_of_2(n):
	r = 1
	for i in range(0,n):
		r *= 2
	return r

n = power_of_2(1000)

sum = 0

for digit in str(n):
	sum += int(digit)

print sum