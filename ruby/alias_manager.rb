#Takes spy's real name
#Swap First and Last name
#Change aeiou to next aeiou
#Change consonants to next consonant

original_name = "Felicia Torres".downcase
new_name = ""
name_array = []

def first_last_swap(old,new)
	new = old.split(" ").reverse!.join(" ")
end
new_name = first_last_swap(original_name,new_name)

#Split the name into all characters. Loop for all letters, if it is a vowel, find the index and increase by one. 

def letter_array (name)
	name.chars
end

# Figure out what index it matches in the vowels, increase that by one, and replace it in the array with that. Do that for each item in the array.

def letter_change(letter)
	vowels = ["a", "e", "i", "o", "u", "a"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z","b"]

	if vowels.include? letter
		vowels[vowels.index(letter)+1]
		elsif consonants.include? letter
			consonants[consonants.index(letter)+1]
		elsif letter == " "
			" "
		else
	end
end

name_array = letter_array(new_name)
new_array = []
name_array.each do |x|
	new_array.push(letter_change(x))
end

new_name = new_array.join("").split(" ").map! {|word| word.capitalize}.join(" ")

# USER INTERFACE
all_names = {}
puts "Hello, type in a name!"
original_name = gets.chomp.downcase
	until original_name == "quit"
		new_name = first_last_swap(original_name,new_name)
		name_array = letter_array(new_name)

		new_array = []
		name_array.each do |x|
			new_array.push(letter_change(x))
		end

		new_name = new_array.join("").split(" ").map! {|word| word.capitalize}.join(" ")
		original_name = original_name.split(" ").map! {|word| word.capitalize}.join(" ")
		all_names[original_name] = new_name

		puts "\nThe new name is #{new_name}. \n\nWould you like to translate another name? \nPlease type the next name, or type 'quit' if you are finished."
		original_name = gets.chomp.downcase
	end

#Add code above to push key-value pairs into empty hash after each iteration, print the iteration upon quitting the program.
puts "\nThank you for your input. To review:"

all_names.each do |original, new|
	puts "#{original} became #{new}"
	end