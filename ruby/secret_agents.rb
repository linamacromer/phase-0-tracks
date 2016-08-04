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
		if string[counter] == "z"
			string[counter] = "a"
		elsif string[counter] == " "
		else 
			string[counter] = string[counter].next
		end
		counter += 1
	end
	return string
end

def decrypt(string)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	counter = 0
	while counter < string.length 
		char = string[counter]
		num = alpha.index(char)
		if char == "a"
			string[counter] = "z"
		elsif char == " "
		else 
			string[counter] = alpha[num - 1]
		end
		counter += 1
	end
	return string
end	

p encrypt("abc")
p encrypt("zed")
p decrypt("bcd")
p decrypt("afe")

#When calling nested methods, it runs the innermost method first, then works its way outer. In this case it encrypted "swordfish" and then decrypted it.
p decrypt(encrypt("swordfish")) 