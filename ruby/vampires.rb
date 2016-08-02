#Ask the user how many employees will be processed
puts "How many employees do you need to process today?"
total_employees = gets.chomp.to_i
employee = 1

until employee > total_employees do

	#Asks employee questions
	puts "What is your name?"
	name = gets.chomp.downcase
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	birthyear = gets.chomp.to_i
	currentyear = 2016
	puts "Have you had your birthday yet this year? Type Yes or No"
	birthdayhappened = gets.chomp.downcase
	puts "Our company cafeteria serves garlic bread. Should we order some for you? Type Yes or No"
	garlic = gets.chomp.downcase
	puts "Would you like to enroll in the company's health insurance? Type Yes or No"
	health = gets.chomp.downcase

	#Check for suspicious allergies in loop
	puts "Name any allergies you have, one at a time."
	allergy = gets.chomp.downcase
	until allergy == "sunshine" || allergy == "done"
		puts "Do you have any other allergies? List them one at a time."
		allergy = gets.chomp.downcase
	end
	if allergy != "sunshine"
		#Check if name is Drake Cula or Tu Fang, vampire_name is true
		if name == "drake cula"
				vampire_name = true
			elsif name == "tu fang"
				vampire_name = true
			else vampire_name = false
		end

		#Check if age is wrong, vampire_age is true
		if birthdayhappened == "yes" && (currentyear - birthyear == age)
				vampire_age = false
			elsif birthdayhappened == "no" && (currentyear - birthyear - 1 == age)
				vampire_age = false
			else vampire_age = true
		end

		#Check if garlic answer was no, vampire_garlic is true
		if garlic == "no"
			vampire_garlic = true
			else vampire_garlic = false
		end

		#Check if health insurance answer was no, vampire_health is true
		if health == "no"
			vampire_health = true
			else vampire_health = false
		end

		#If age=false AND (garlic OR health)=false, "probably not a vampire"
		#If age=true AND (garlic OR health =true), "probably a vampire"
		#If age=true AND garlic=true AND health=true, "almost certainly a vampire"
		#If age=false, garlic=false, health=false, name=true, "Definitely a vampire"
		#Else "Results inconclusive"
		#print results
		if 
			(vampire_age == false) && (vampire_garlic == false) && (vampire_health == false) && (vampire_name == true)
				vampire = "Definitely a vampire."
			elsif (vampire_age == false) && (vampire_garlic == false || vampire_health == false)
				vampire = "Probably not a vampire."
			elsif (vampire_age == true) && (vampire_garlic == true) && (vampire_health == true)
				vampire = "Almost certainly a vampire."
			elsif (vampire_age == true) && (vampire_garlic == true || vampire_health == true)
				vampire = "Probably a vampire."
			else
				vampire = "Results inconclusive"
		end
		puts vampire
	employee +=1
	else puts "Probably a vampire."
	employee +=1
end
end