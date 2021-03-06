# Create a cookbook compilation, and a way for the user to randomly generate a recipe from the cookbook.
# Database will have ID index number, name of recipe, whether it can be for lunch, whether it can be for dinner
# User will be able to run a random generator
	#User will be asked if they would like to re-roll a certain meal
# User will be able to add a new recipe to the cookbook 


require 'sqlite3'

cookbook = SQLite3::Database.new("cookbook.db")
random_lunch = nil
random_dinner = nil

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS recipes(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    lunch BOOLEAN,
    dinner BOOLEAN
  )
SQL

def add_recipe(db, name, lunch, dinner)
  db.execute("INSERT INTO recipes (name, lunch, dinner) VALUES (?, ?, ?)", [name, lunch, dinner])
end

def list_recipes(db)
	puts "\n\n***RECIPES***"
  	recipes = db.execute("SELECT * FROM recipes")
  	recipes.each do |recipe|
  	puts "#{recipe[0]}. #{recipe[1]}"
	end
end

def randomize_lunch(db)
	random_number = rand(db.execute("SELECT * FROM recipes").length)
	recipes = db.execute("SELECT * FROM recipes")
	until recipes[random_number][2] == "true"
		random_number = rand(db.execute("SELECT * FROM recipes").length)
	end
		random_lunch = recipes[random_number][1]
end

def randomize_dinner(db)
	random_number = rand(db.execute("SELECT * FROM recipes").length)
	recipes = db.execute("SELECT * FROM recipes")
	until recipes[random_number][3] == "true"
		random_number = rand(db.execute("SELECT * FROM recipes").length)
	end
		random_dinner = recipes[random_number][1]
end

def randomize_meals(db)	
	random_lunch = randomize_lunch(db)
	random_dinner = randomize_dinner(db)
	until random_lunch != random_dinner
		random_lunch = randomize_lunch(db)
		random_dinner = randomize_dinner(db)
	end
	puts "Lunch this week will be #{random_lunch}.\nDinner this week will be #{random_dinner}."
	puts "----------------\nAre you satisfied with this result?\nType YES to return to the main menu. Type LUNCH or DINNER to reroll a specific meal. Type REDO to randomize both meals."
	reroll = gets.chomp.downcase
	until reroll == "yes"
		if reroll == "redo"
			random_lunch = randomize_lunch(db)
			random_dinner = randomize_dinner(db)
			until random_lunch != random_dinner
				random_lunch = randomize_lunch(db)
				random_dinner = randomize_dinner(db)
			end
			puts "\n\nLunch this week will be #{random_lunch}.\nDinner this week will be #{random_dinner}."
		elsif reroll == "lunch"
			random_lunch = randomize_lunch(db)
			until random_lunch != random_dinner
				random_lunch = randomize_lunch(db)
			end
			puts "\n\nLunch this week will be #{random_lunch}.\nDinner this week will be #{random_dinner}."
		elsif reroll == "dinner"
			random_dinner = randomize_dinner(db)
			until random_lunch != random_dinner
				random_dinner = randomize_dinner(db)
			end
			puts "\n\nLunch this week will be #{random_lunch}.\nDinner this week will be #{random_dinner}."
		elsif reroll == "yes"
		else 
			puts "\n\nI didn't understand that input.\nLunch this week will be #{random_lunch}.\nDinner this week will be #{random_dinner}."
		end
		puts "----------------\nAre you satisfied with this result?\nType YES to return to the main menu. Type LUNCH or DINNER to reroll a specific meal. Type REDO to randomize both meals."
		reroll = gets.chomp.downcase
	end
end

def main_menu()
	puts "What would you like to do? Type the number\n1. Randomize meals\n2. View recipe list\n3. Add a recipe\n4. Exit"
	user_input = gets.chomp.to_i
end

## DRIVER CODE **
#add_recipe(cookbook, "Tacos", "false", "true")
#add_recipe(cookbook, "Pot roast", "true", "true")
#For copy/pasting later if table needs to be refilled: INSERT INTO recipes (name, lunch, dinner) VALUES ("Tacos","false","true"),("Pot Roast","true","true"),("Beet sandwiches","false","true"),("Roast beef sandwiches","false","true"),("Curry","true","true"),("Chinese lunch","true","true"),("Sausages and broccoli","true","true"),("Lentil soup","false","true"),("Shepherd’s pie","true","true"),("Stuffed peppers","true","true"),("Salmon and broccoli","false","true"),("Chicken salad","true","true"),("Steak salad","false","true")

cookbook.execute(create_table_cmd)
#list_recipes(cookbook)

# puts "-------"
# randomize_lunch(cookbook)
# randomize_dinner(cookbook)
# puts "- - - - - -"
# randomize_meals(cookbook)

puts "\nHello and welcome to the meal generator program!\n\n"
user_input = main_menu()

until user_input == 4
	if user_input == 1
		puts "\n\n"
		randomize_meals(cookbook)
	elsif user_input == 2
		list_recipes(cookbook)
	elsif user_input == 3
		puts "What is the recipe name?"
		name = gets.chomp
		puts "Can this recipe be used for lunch? Type true or false."
		lunch = gets.chomp
		puts "Can this recipe be used for dinner? Type true or false."
		dinner = gets.chomp
		add_recipe(cookbook,name,lunch,dinner)
		puts "\n\n#{name} has been added to the recipe list!"
	end
	puts "\n\n-----"
	user_input = main_menu()
end

puts "\n\nThanks and goodbye!"

