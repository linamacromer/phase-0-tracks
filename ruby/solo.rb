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
		puts "--------------------"
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
	#Welcome the user
	#Ask questions and get input, add to array
	#Ask if there is another dragon to add. If yes, repeat. If no, next step.
	#Print all results

puts "Hello, and welcome to the dragon creator!"

def questionnaire(dragons_array)
	print "What is the name of the dragon? "
	name = gets.chomp

	print "What color is the dragon? "
	color = gets.chomp

	print "How tall is the dragon (in feet)? "
	height_ft = gets.to_i

	print "How much does the dragon weigh (in pounds)? "
	weight_lb = gets.to_i

	print "How old is the dragon? "
	age = gets.to_i

	print "Can this dragon breathe fire? (Yes/No) "
	can_breathe_fire = gets.chomp.downcase 
	can_breathe_fire = can_breathe_fire == "yes"

	dragons_array << Dragon.new(name,color,height_ft,weight_lb,age,can_breathe_fire)
end

dragons = []
questionnaire(dragons)

print "Do you have another dragon to add? (Yes/No) "
add_another_dragon = gets.chomp.downcase
add_another_dragon = add_another_dragon == "yes"

while add_another_dragon == true
	questionnaire(dragons)
	print "Do you have another dragon to add? (Yes/No) "
	add_another_dragon = gets.chomp.downcase
	add_another_dragon = add_another_dragon == "yes"
end

puts "---------------------\nOkay great, let's review:"
dragons.each do |dragon|
	p dragon.can_breathe_fire
	if dragon.can_breathe_fire == true
	puts "The dragon's name was #{dragon.name}, was #{dragon.color} colored, #{dragon.height_ft} feet tall, #{dragon.weight_lb} pounds, #{dragon.age} years old, and could breathe fire."
	else
	puts "The dragon's name was #{dragon.name}, was #{dragon.color} colored, #{dragon.height_ft} feet tall, #{dragon.weight_lb} pounds, #{dragon.age} years old, and could not breathe fire."
	end
end

#TEST CODE
	# mirianth = Dragon.new("Mirianth","ruby red",120,850,2,false)
	# p mirianth

	# food_array = ["sheep", "cows", "pigs", "humans...?!"]

	# mirianth.roar(4)
	# mirianth.breathe_fire
	# p food_array
	# mirianth.eat(food_array)
	# p food_array

