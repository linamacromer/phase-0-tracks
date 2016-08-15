class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		#@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
		puts "This Santa is: \nGender: #{@gender} \nEthnicity: #{@ethnicity} \nAge: #{@age}"
		puts "----------"
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

end

# Nick = Santa.new
# cookie_type = "snickerdoodle"

# Nick.speak
# Nick.eat_milk_and_cookies(cookie_type)

santas = []
example_genders = ["agender", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Asian", "prefer not to say", "N/A"]

until santas.length == 5
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end