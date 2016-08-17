module Shout

	def yell_angrily(words)
		words + "!!!" + ":-("
	end

	def yell_happily(words)
		words + "!!!" + ":-D"
	end

end

# angry_phrase = "ugh"
# happy_phrase = "whee"

# p Shout.yell_angrily(angry_phrase)
# p Shout.yell_happily(happy_phrase)

class Cheerleader
	def initialize
		puts "Ready...OK!"
	end

	include Shout
end

class Coach
	def initialize
		puts "Alright team, listen up!"
	end

	include Shout
end

abby = Cheerleader.new
puts abby.yell_happily("Go team")
puts abby.yell_angrily("Defense")

brian = Coach.new
puts brian.yell_happily("Go out there and work together")
puts brian.yell_angrily("That doesn't look like teamwork")