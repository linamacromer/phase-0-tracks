#Define a new class
#at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
#at least three methods, at least one of which takes an argument

#Dragon
#attributes: color (str), height, weight, age (int), can_breathe_fire (bool)
#method: roar several times (times parameter), breathes fire (must be can_breathe_fire true), eat (takes a full array of food items and eats them all to output empty array) 

#BUSINESS LOGIC

class Dragon

	attr_reader :name, :color
	attr_accessor :height_ft, :weight_lb, :age, :can_breathe_fire

	def initialize(name,color,height_ft,weight_lb,age,can_breathe_fire)
		puts "Initializing dragon:"
		@name = name
		@color = color
		@height_ft = height_ft
		@weight_lb = weight_lb
		@age = age
		@can_breathe_fire = can_breathe_fire
	end

	def roar(roar_times)
		roar_times.times do
			puts "Roarrrr"
		end
	end

	def breathe_fire
		if @can_breathe_fire == true
			puts "WHOOOOOOMPH! *sizzle*"
		else
			puts "Error: this dragon cannot breathe fire."
		end
	end

	def eat(food_array)
		food_array.clear
		puts "#{@name} ate everything..."
	end

end

#USER INTERFACE

mirianth = Dragon.new("Mirianth","ruby red",120,850,2,false)
p mirianth

food_array = ["sheep", "cows", "pigs", "humans...?!"]

mirianth.roar(4)
mirianth.breathe_fire
p food_array
mirianth.eat(food_array)
p food_array