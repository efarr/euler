def factorial(n):
	if n == 0: 
		return 1
	else:
		return n * factorial(n-1)

def combinations(num):
	#Number of overall combinations / number of redundant combinations
	print num, ": ", (factorial(num*2) / (factorial(num)*factorial(num)))

for i in range(2,21):
	combinations(i)