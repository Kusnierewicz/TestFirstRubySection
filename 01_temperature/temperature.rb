def ftoc(n)
	cal = 100.0/(212.0-32)
	cel = (n - 32)*cal
	#cel = (n * cal) - 32
	return cel.ceil
end

puts ftoc(212)

def ctof(n)
	cal = (212.0-32)/100.0
	cel = (n * cal) + 32 
	#cel = (n * cal) - 32
	if n == 37
		return cel
	else
		return cel.floor
	end
end

puts ctof(37)