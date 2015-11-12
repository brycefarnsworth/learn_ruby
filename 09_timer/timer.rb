class Timer
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end
	
	def time_string
		display = ""
		seconds = @seconds
		hours = seconds / 3600
		if hours >= 10
			display += hours.to_s + ":"
		else
			display += "0" + hours.to_s + ":"
		end
		seconds = seconds % 3600
		minutes = seconds / 60
		if minutes >= 10
			display += minutes.to_s + ":"
		else
			display += "0" + minutes.to_s + ":"
		end
		seconds = seconds % 60
		if seconds >= 10
			display += seconds.to_s
		else
			display += "0" + seconds.to_s
		end
		display
	end
end