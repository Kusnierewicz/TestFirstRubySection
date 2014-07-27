class Timer
	attr_accessor :seconds
	
	def seconds
		@seconds = 0
	end
	def time_string
		Time.at(@seconds).gmtime.strftime('%R:%S')
	end 
end
