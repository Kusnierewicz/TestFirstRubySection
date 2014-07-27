def translator(word)
	letters = ('a'..'z').to_a
	vowels = %w[a e i o u]
	consonants = letters - vowels
	special1 = ["qu"]
	special2 = ["sch"]

	if vowels.include?(word[0])
		puts "1"
		word + "ay"
	elsif special1.include?(word[0..1])
		puts "2"
		word[2..-1] + word[0..1] + 'ay'
	elsif special2.include?(word[0..2])
		puts "3"	
		word[3..-1] + word[0..2] + 'ay'
	elsif consonants.include?(word[0]) && special1.include?(word[1..2])
		puts "4"
		word[3..-1] + word[0..2] + 'ay'
	elsif consonants.include?(word[0]) && vowels.include?(word[1]) 
		puts "5"
		word[1..-1] + word[0] + "ay"
	elsif consonants.include?(word[0]) && consonants.include?(word[1]) && vowels.include?(word[2]) 
		puts "6"
		word[2..-1] + word[0..1] + 'ay'
	elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
		puts "7"
		word[3..-1] + word[0..2] + 'ay'
	
	end
end

def translate(text)
	translation = []
	words = text.split(" ")
	
	words.each do |w|
		translation.push(translator(w))
	end
	translation.join(" ")
end

