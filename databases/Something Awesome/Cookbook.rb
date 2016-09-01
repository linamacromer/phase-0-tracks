# Create a cookbook compilation, and a way for the user to randomly generate a recipe from the cookbook.
# Database will have ID index number, name of recipe, whether it can be for lunch, whether it can be for dinner
# User will be able to run a random generator
# User will be able to add a new recipe to the cookbook 
# Stretch goal: database will have another column for how many times a recipe has been picked, and generate random recipe method will increase that number by 1, so that the generator picks from recipes that have not been used as much.

require 'sqlite3'

cookbook = SQLite3::Database.new("cookbook.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS recipes(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    link VARCHAR(255),
    lunch BOOLEAN,
    dinner BOOLEAN
  )
SQL

#cookbook.execute(create_table_cmd)

def add_recipe(db, name, lunch, dinner)
  db.execute("INSERT INTO recipes (name, lunch, dinner) VALUES (?, ?, ?)", [name, lunch, dinner])
end

def list_recipes(db)
  recipes = db.execute("SELECT * FROM recipes")
  recipes.each do |recipe|
  	puts "#{recipe[0]}. #{recipe[1]}"
	end
end

def randomize_lunch(db)
	random_number = rand(db.execute("SELECT * FROM recipes").length)
	recipes = db.execute("SELECT * FROM recipes")
	until recipes[random_number][3] == "true"
		random_number = rand(db.execute("SELECT * FROM recipes").length)
	end
		puts "Lunch for this week will be #{recipes[random_number][1]}"
end

def randomize_dinner(db)
	random_number = rand(db.execute("SELECT * FROM recipes").length)
	recipes = db.execute("SELECT * FROM recipes")
	until recipes[random_number][4] == "true"
		random_number = rand(db.execute("SELECT * FROM recipes").length)
	end
		puts "Lunch for this week will be #{recipes[random_number][1]}"
end

## DRIVER CODE **
#add_recipe(cookbook, "Tacos", "false", "true")
#add_recipe(cookbook, "Pot roast", "true", "true")

list_recipes(cookbook)

puts "-------"
randomize_lunch(cookbook)
randomize_dinner(cookbook)





