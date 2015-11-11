def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(numbers)
	sum = 0
	numbers.each do |num|
		sum += num
	end
	sum
end

def multiply(*numbers)
	if numbers.length == 0
		0
	else
		numbers.inject { |product, number| product * number }
	end
end

def power(base, power)
	product = 1
	power.times do
		product *= base
	end
	product
end

def factorial(number)
	if number == 0
		1
	else
		number * factorial(number - 1)
	end
end