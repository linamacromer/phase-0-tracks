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

puts "Hello, type in a name!"
original_name = gets.chomp.downcase

new_name = first_last_swap(original_name,new_name)
name_array = letter_array(new_name)

new_array = []
name_array.each do |x|
	new_array.push(letter_change(x))
end

new_name = new_array.join("").split(" ").map! {|word| word.capitalize}.join(" ")

puts "The new name is #{new_name}."
