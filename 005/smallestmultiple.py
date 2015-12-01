# 2520 is the smallest number that can be divided by each of the numbers 
# from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def notMultiple(n):
	for i in range(11,20):
		if n % i > 0:
			return True
	return False

lowest = 20

while (notMultiple(lowest)):
	lowest += 20

print(lowest)