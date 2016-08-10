#Pseudocode
	#Prompt user for all of the info
	#Convert any user input to appropriate data type
	#Print hash back out to review when all questions answered
	#Give user opportunity to udpdate a key, or none.
	#Print updated hash back out to screen as final

#Business Logic
client = {}

#User Interface
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