module Shout

	def self.yell_angrily(words)
		words + "!!!" + ":-("
	end

	def self.yell_happily(words)
		words + "!!!" + ":-D"
	end

end

angry_phrase = "ugh"
happy_phrase = "whee"

p Shout.yell_angrily(angry_phrase)
p Shout.yell_happily(happy_phrase)