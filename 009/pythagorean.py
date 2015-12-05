# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
import sys

for a in range(1,334):
	for b in range(a+1,500):
		c = 1000 - a - b
		if a*a + b*b == c*c:
			print(a*b*c)
			sys.exit(0)