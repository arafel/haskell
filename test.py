#!/usr/bin/env python

def fib(n):
	if n < 3:
		return 1
	else:
		return (fib (n - 2) + fib (n - 1))

def fiblist(n):
	return [ fib(x) for x in range(1, n + 1)]

if __name__ == "__main__":
	print fiblist(10)