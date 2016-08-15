class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize
		puts "Initializing Santa instance..."
	end

end

Nick = Santa.new
cookie_type = "snickerdoodle"

Nick.speak
Nick.eat_milk_and_cookies(cookie_type)