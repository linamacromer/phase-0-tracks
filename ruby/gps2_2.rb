# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # create an empty hash to store items
 # take input string and break out items into an array
 # for each item in array
 #   - add to hash as a key with default value of one
 # print the list to the console using print-list method
# output: hash with items as keys and qty values

# Method to add an item to a list
# input: list hash, item name, and optional quantity
# steps: add item name key with optional quantity value to hash
# output: modified hash

# Method to remove an item from the list
# input: list hash, item name
# steps: delete item from hash
# output: modified hash

# Method to update the quantity of an item
# input: list hash, item name, updated qty
# steps: call item name key in hash and overwrite with new qty
# output: modified hash

# Method to print a list and make it look pretty
# input: list hash
# steps: print key value pairs with nice formatting
# output: hash as is, with strings printed to console

#release 2

#list print method
def print_list(list_hash)
    puts "*Grocery List*"
    list_hash.each do |item, qty|
        puts "#{item}: #{qty}"
    end
    puts "--------------------"
end

#create a list method
def create_list(string_of_items) #needs to be separated by single spaces
    new_list = {}
    items_array = string_of_items.split(" ")
    items_array.each { |item| new_list[item] = 1 }
    print_list(new_list)
    new_list
end

#add item and optional quantity or update qty if pre-existing item
def add_or_update_item(list_hash, item, qty=1)
    list_hash[item] = qty
    print_list(list_hash)
    list_hash
end

#removes an item from list
def remove_item(list_hash, item)
    list_hash.delete(item)
    print_list(list_hash)
    list_hash
end

#test code
# list = create_list("carrots apples cereal pizza")
# p list.class
# add_to_list(list, "avocado", 5)
# print_list(list)
# add_to_list(list, "broccoli")
# print_list(list)
# remove_item(list, "apples")
# update_qty(list, "avocado", 3)





# RELEASE 5: REFLECT
# What did you learn about pseudocode from working on this challenge?
	#This was the first time I've used the input/steps/output format of pseudocoding, and I really loved it actually. It makes the actual coding quite easy because everything is basically already laid out. It also makes it so that you're not glossing over anything in the pseudocode, which can be easy to do sometimes when you're just thinking about the big picture of what you want the code to do.
# What are the tradeoffs of using arrays and hashes for this challenge?
	#If we were to use an array, each item in the array would need to be a nested array that held the two data points (item name and qty). The use of a hash here seemed more appropriate, especially when we were also needing to update items.
# What does a method return?
	#A method returns the last line evaluated, so a lot of our methods called out the hash as the last line to make sure the return was the hash.
# What kind of things can you pass into methods as arguments?
	#You can pass almost anything into methods as arguments, which is very convenient. In this challenge, we passed strings in and got hash keys out, so it doesn't necessarily need to be the same thing going in that's coming out.
# How can you pass information between methods?
	#You can call methods within methods as long as Ruby can see it defined, otherwise it will give you a name error.
# What concepts were solidified in this challenge, and what concepts are still confusing?
	#I feel really good about using hashes and arrays. One thing that I was shaky on coming into this was when it was necessary to use a colon in accessing/adding values in a hash. I wasn't sure if we needed the colon yet, or if we could leave it out while we were defining our addition. I'll remember from now on that the colon isn't needed unless it's a symbol, which it wasn't in this case.




















