class Santa

	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	# Take reindeer name as an argument, and move that to last ranking
	def get_mad_at(reindeer)
		@reindeer_ranking
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end

# Nick = Santa.new
# cookie_type = "snickerdoodle"

# Nick.speak
# Nick.eat_milk_and_cookies(cookie_type)

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |santa|
	puts santa.age
	puts santa.ethnicity
end