#!/usr/bin/env python

def fib(n):
	if n < 3:
		return 1
	else:
		return (fib (n - 2) + fib (n - 1))

def fiblist(n):
	return [ fib(x) for x in range(1, n + 1)]

def fib2(n, acc):
	print "fib2 - n %i, acc %s" % (n, acc.__string__())
	if n == 0:
		return acc
	elif (n >= 1) and (n <= 2):
		acc.append(1)
	else:
		acc.append(acc[-2] + acc[-1])
	
	return fib2(n - 1, acc)

def fiblist2(n):
	return fib2(n, [])

if __name__ == "__main__":
	print fiblist(10)