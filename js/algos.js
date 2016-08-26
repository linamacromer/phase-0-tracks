//Write a function that takes an array of words or phrases and returns the lonest word or phrase in the array
	//Take array as parameter
		//Set longest_phrase variable to blank
		//Loop through each array item with index counter
		//Conditional statement: if length is longer than length of longest_phrase variable, replace variable. If not longer, move to the next
		//Return longest_phrase variable

function longest_phrase(phrase_array) {
	var longest_phrase = "";
	for (var i = 0; i < phrase_array.length; i++) {
		if (phrase_array[i].length > longest_phrase.length) {
			longest_phrase = phrase_array[i]
		}
	};
	return longest_phrase;
}

//Write a function that takes two objects and checks to see if the objects share at least one key-value pair. Return true or false

function has_match(first_object, second_object) {
	for (key in first_object) {
		if (first_object.key === second_object.key) {
			return true; break;
		} else {
			return false;
		}
	}
}

//Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
	//Run a for loop with given length
		//Generate random letters, between 1 and 10 letters long, add to word array
		//Return array
function random_data(how_many_times) {
	random_data_array = []
	for (var i = 0; i < how_many_times; i++) {
		min = Math.ceil(1)
		max = Math.floor(10)
		number_of_letters = Math.floor(Math.random() * (max-min)) + min;
		random_data_array.push(Math.random().toString(36).slice(number_of_letters));
	}
	return random_data_array
}


//DRIVER CODE:
// var phrase_array = ["long phrase","longest phrase","longer phrase"];
// console.log(longest_phrase(phrase_array))

// var phrase_array2 = ["1", "12", "123"];
// console.log(longest_phrase(phrase_array2))

// var person1 = {name: "Steven", age: 54};
// var person2 = {name: "Tamir", age: 54};
// console.log(has_match(person1, person2));

//console.log(random_data(10))

for (var i = 0; i < 10; i++) {
	this_array = random_data(3);
	console.log(this_array);
	console.log("The longest phrase of this array is " + longest_phrase(this_array));
	console.log("-----------");
}