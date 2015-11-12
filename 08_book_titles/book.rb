class Book
	attr_accessor :title
	
	def title=(new_title)
		exceptions = ["a", "an", "the", "for", "and", "nor", "but", "or", 
					  "yet", "so", "at", "around", "by", "after", "along", 
					  "from", "of", "on", "to", "with", "without", "over", 
					  "in"]
		title_words = new_title.split
		title_words.each_index do |i|
			if exceptions.include?(title_words[i].downcase)
				title_words[i] = title_words[i].downcase
			else
				title_words[i] = title_words[i].capitalize
			end
		end
		title_words[0].capitalize!
		title_words[title_words.length - 1].capitalize!
		@title = title_words.join(" ")
	end
end