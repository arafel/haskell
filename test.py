#!/usr/bin/env python

def fib(n):
	if n < 3:
		return 1
	else:
		return (fib (n - 2) + fib (n - 1))

def fiblist(n):
	return [ fib(x) for x in range(1, n + 1)]

def fib2(n, acc):
	if n == 0:
		print "n is 0, returning acc", acc
		return acc
	elif (n >= 1) and (n <= 2):
		print "Appending 1 to acc", acc
		acc.append(1)
	else:
		print "n is", n, "- processing acc", acc
		acc.append(acc[-2] + acc[-1])
	
	return fib2(n - 1, acc)

def fiblist2(n):
	return fib2(n, [])

def myunzip(thelist):
	a = []
	b = []
	for item in thelist:
		c, d = item
		a.append(c)
		b.append(d)
	return a, b


if __name__ == "__main__":
	print fiblist(10)
	print myunzip([(1, 2), (3, 4)])

