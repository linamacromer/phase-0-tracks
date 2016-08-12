#Takes spy's real name
#Swap First and Last name
#Change aeiou to next aeiou
#Change consonants to next consonant

first = "Felicia"
last = "Torres"
real_name = first.downcase + " " + last.downcase
new_name = ""
name_array = []

def first_last_swap(old,new)
	new = old.split(" ").reverse!.join(" ")
end
new_name = first_last_swap(real_name,new_name)

#Split the name into all characters. Loop for all letters, if it is a vowel, find the index and increase by one. 

def letter_array (name)
	name.chars
end

# Figure out what index it matches in the vowels, increase that by one, and replace it in the array with that. Do that for each item in the array.

def letter_change(letter)
	vowels = ["a", "e", "i", "o", "u", "a"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z","b"]
	new_array = []

	if vowels.include? letter
		new_array.push(vowels[vowels.index(letter)+1])
		elsif consonants.include? letter
			new_array.push(consonants[consonants.index(letter)+1])
		elsif letter == " "
			new_array.push(" ")
		else
	end
end

name_array = letter_array(new_name)
new_array = []
name_array.each do |x|
	new_array.push(letter_change(x))
end
p new_array

#name_array = letter_array(new_name)

#name_array.each do |x|
#	p vowel_change(x)
#end

#p name_array
#letter_array(new_name).each do |variable|
#end