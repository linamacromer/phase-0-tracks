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
p first_last_swap(real_name,new_name)