class Puppy

	def initialize
		puts "initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  	counter = 0
  	while counter < times
  	puts "Woof!"
  	counter += 1
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	human_years * 7
  end

  def eat(food_array)
  	food_array.clear
  end

end

class Kitty

	def initialize
		puts "Initializing new kitty instance..."
	end

	def sleep(sleep_hours)
		counter = 0
		while counter < sleep_hours
			puts "zZzZzZzZzZ..."
			counter += 1
		end
	end

	def kitty_scratches
		random_number = rand(10)
		if random_number.even?
			puts "Ouch! The kitty scratched you!"
		else
			puts "Awww, the kitty lets you pet its tummy!"
		end
	end

end

# User Interface

# Artie = Puppy.new
# toy = "ball"
# times = 4
# human_years = 4
# food_array = ["avocados", "bananas", "dog treats"]

# Artie.fetch(toy)
# Artie.speak(times)
# Artie.roll_over
# p Artie.dog_years(human_years)

# p food_array
# Artie.eat(food_array)
# p food_array

# Stormy = Kitty.new
# sleep_hours = 7

# Stormy.sleep(sleep_hours)
# Stormy.kitty_scratches

amount_of_kitties = 0
all_kitties = []

until amount_of_kitties == 50
	all_kitties << Kitty.new
	amount_of_kitties += 1
end

all_kitties.each do |kitty|
	kitty.sleep(2)
	kitty.kitty_scratches
end