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

#Check if name is Drake Cula or Tu Fang, vampire_name is true

#Check if age is wrong, vampire_age is true

#Check if garlic answer was no, vampire_garlic is true

#Check if health insurance answer was no, vampire_health is true

#If age=false AND (garlic OR health)=false, "probably not a vampire"

#If age=true AND (garlic OR health =true), "probably a vampire"

#If age=true AND garlic=true AND health=true, "almost certainly a vampire"

#If age=false, garlic=false, health=false, name=true, "Definitely a vampire"

#Else "Results inconclusive"

#print results