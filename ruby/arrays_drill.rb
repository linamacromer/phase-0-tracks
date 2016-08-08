def build_array(x,y,z)
	new_array = [x,y,z]
end

def add_to_array(array,x)
	array << x
end	

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

new_array = build_array(1,"two",nil)
p new_array

add_to_array(new_array,"a")
p new_array

add_to_array(new_array,"b")
p new_array