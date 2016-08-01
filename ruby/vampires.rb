puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birthyear = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? Type Yes or No"
garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance? Type Yes or No"
health = gets.chomp
puts "To recap, you are #{name}, #{age} ys old, born in #{birthyear}, #{garlic} to garlic, and #{health} to health insurance."