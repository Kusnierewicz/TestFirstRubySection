def add(i,j)
	i + j
end

def subtract(i,j)
	i - j
end

def sum(a)
	w = 0
	a.each {|x| w += x}
	return w
end	

def multiply(*n)
	w = 1
	n.each {|x| w *= x}
	return w
end

def power(i, j)
	i ** j
end

def factorial(n)
	if n == 0
		return 1
	else
		n = n * factorial(n - 1)
	end
end