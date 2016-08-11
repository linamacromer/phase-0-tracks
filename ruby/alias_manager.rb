#Takes spy's real name
#Swap First and Last name
#Change aeiou to next aeiou
#Change consonants to next consonant

first = "Felicia"
last = "Torres"
real_name = first + " " + last
new_name = ""

def first_last_swap(old,new)
	new = old.split(" ").reverse!.join(" ")
end
new_name = first_last_swap(real_name,new_name)
p new_name
#Split the name into all characters. Loop for all letters, if it is a vowel, find the index and increase by one. 

def vowels (name)
	name.chars
end

p vowels(new_name)