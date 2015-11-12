def translate(string)
	words = string.split
	words.each_index do |i|
		letters = words[i].split("")
		if letters[0] == letters[0].upcase
			capitalized = true
		else
			capitalized = false
		end
		while not /[AEIOUaeiou]/.match(letters[0])
			if letters[0] == "q" and letters[1] == "u"
				letters.push(letters.shift)
				letters.push(letters.shift)
			else
				letters.push(letters.shift)
			end
		end
		words[i] = letters.join + "ay"
		words[i].capitalize! if capitalized
	end
	words.join(" ")
end