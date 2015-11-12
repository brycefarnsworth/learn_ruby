def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, repetitions = 2)
	says = ""
	repetitions.times do
		says += string + " "
	end
	says[0..(says.length-2)]
end

def start_of_word(string, first_letters)
	string[0..(first_letters-1)]
end

def first_word(string)
	string.split[0]
end

def titleize(string)
	exceptions = ["a", "an", "the", "for", "and", "nor", "but", "or", "yet", 
				  "so", "at", "around", "by", "after", "along", "from", "of",
				  "on", "to", "with", "without", "over", "in"]
	title = string.split
	title.each do |word|
		if not exceptions.include?(word)
			word.capitalize!
		end
	end
	title.first.capitalize!
	title.last.capitalize!
	title.join(" ")
end