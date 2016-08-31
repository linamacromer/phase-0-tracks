# Create a cookbook compilation, and a way for the user to randomly generate a recipe from the cookbook.
# Database will have ID index number, name of recipe, and hyperlink
# User will be able to run a random generator
# User will be able to add a new recipe to the cookbook 
# Stretch goal: database will have another column for how many times a recipe has been picked, and generate random recipe method will increase that number by 1, so that the generator picks from recipes that have not been used as much.

require 'sqlite3'

cookbook = SQLite3::Database.new("cookbook.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS recipes(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    link VARCHAR(255)
  )
SQL

cookbook.execute(create_table_cmd)