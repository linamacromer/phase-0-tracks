test_array = []
p test_array

test_array << "red" << "blue" << "green" << "yellow" << "purple"
p test_array

test_array.delete_at(2)
p test_array

test_array.insert(2, "orange")
p test_array

test_array.delete("red")
p test_array

puts "Does the array include 'purple'? #{test_array.include?("purple")}"

test_array2 = ["apple", "banana", "cantaloupe"]
test_array3 = test_array + test_array2
p test_array3