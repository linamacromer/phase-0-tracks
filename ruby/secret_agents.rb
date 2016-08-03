#First method: encrypt
	#advances every letter of string one letter forward, spaces remain space
#walk through string
	#for each letter, use .next method



#Second method: decrypt
	#reverses above

#walk through string
	#look at each letter, determine what number of index it is
	#change it to the previous index number character

def encrypt(string)
	counter = 0
	while counter < string.length
		string[counter] = string[counter].next
		counter += 1
	end
	return string
end
p encrypt("abc")

def decrypt(string)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	counter = 0
	while counter < string.length 
		char = string[counter]
		num = alpha.index(char)
		string[counter] = alpha[num - 1]
		counter +=1
	end
	return string
end	
p decrypt("bcd")