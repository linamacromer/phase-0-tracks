#Pseudocode
	#Prompt user for all of the info
	#Convert any user input to appropriate data type
	#Print hash back out to review when all questions answered
	#Give user opportunity to udpdate a key, or none.
	#Print updated hash back out to screen as final

#Business Logic
client = {}

#User Interface
	#type out all information
print "Hello, please input client information.\nName: "
client[:name] = gets.chomp
print "Age: "
client[:age] = gets.chomp.to_i
print "Number of Children: "
client[:children] = gets.chomp.to_i
print "Favorite color: "
client[:color] = gets.chomp
print "Hometown: "
client[:hometown] = gets.chomp
print "Do you have any pets? (Y/N): "
client[:pets] = gets.chomp

	#print hash to review and ask for correction
puts "\nThank you for the information. Please review it below and make sure it is all correct.\n\nName: #{client[:name]} \nAge: #{client[:age]} \nNumber of Children: #{client[:children]} \nFavorite Color: #{client[:color]} \nHometown: #{client[:hometown]} \nPets?: #{client[:pets]}\n\nDoes this all look correct? If there are any mistakes, type the label name and hit enter, and you will be prompted for a correction. If there are no mistakes, type 'none' to submit the form."
correction = gets.chomp.downcase

	#if correction is none, skip to the end. If correction is not none, get input
if correction == "none"
	puts "No corrections to make."
	else
	puts "Please enter the corrected data."
	correct_data = gets.chomp
	client[correction.to_sym] = correct_data
end

	#print final hash to view
puts "\nThank you for the information. See below for your client information.\n\nName: #{client[:name]} \nAge: #{client[:age]} \nNumber of Children: #{client[:children]} \nFavorite Color: #{client[:color]} \nHometown: #{client[:hometown]} \nPets?: #{client[:pets]}\n\nThanks, and have a good day."