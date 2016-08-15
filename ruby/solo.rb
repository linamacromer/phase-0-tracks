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

end

#USER INTERFACE

mirianth = Dragon.new("Mirianth","ruby red",120,850,2,true)
p mirianth