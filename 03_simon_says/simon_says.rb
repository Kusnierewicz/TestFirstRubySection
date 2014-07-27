def echo(a)
	a
end	

def shout(a)
	a.upcase
end

def repeat(a, i = 2)
	((echo(a) + " ") * i)[0..-2]
end

def start_of_word(a, n)
	a[0, n]
end

def first_word(a)
	a.split(" ")[0]
end

def titleize(a)
	s = a.split(" ")
	s[0].capitalize!
	s.each do |w|
		if w.length > 4
			w.capitalize!
		end
	end
	s[-1].capitalize!
	s.join(" ")
end