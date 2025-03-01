def calculate_fibonacci(n):
	if n <= 0:
		return []
	elif n == 1:
		return [0]
	elif n == 2:
		return [0, 1]
		
	fib = [0, 1]
	for i in range(2, n):
		fib.append(fib[i-1] + fib[i-2])
	return fib
		
def main():
	n = 5  # Calculate first 10 Fibonacci numbers
	result = calculate_fibonacci(n)
	print(f"First {n} Fibonacci numbers: {result}")
		
if __name__ == "__main__":
		main()
