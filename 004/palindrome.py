# A palindromic number reads the same both ways. The largest palindrome
# made from the product of two 2-digit numbers is 9009 = 91 * 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def isPalindrome(num):
    return str(num) == str(num)[::-1]

largestPalindrome = 1

for i in range(100,1000):
    for j in range (i,1000):
        if (i*j > largestPalindrome and isPalindrome(i*j)):
            largestPalindrome = i*j

print(largestPalindrome)
