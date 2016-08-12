#Takes spy's real name
#Swap First and Last name
#Change aeiou to next aeiou
#Change consonants to next consonant

first = "Felicia"
last = "Torres"
real_name = first + " " + last
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

def vowel_change(letter)
	vowels = ["a", "e", "i", "o", "u"]

	if vowels.include? letter
		p key = vowels.index(letter)
		p letter = vowels[key+1]
		else
	end
end

name_array = letter_array(new_name)

name_array.each do |x|
	p vowel_change(x)
end

p name_array
#letter_array(new_name).each do |variable|
#end