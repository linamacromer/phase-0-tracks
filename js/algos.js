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
		if (first_object["key"] === second_object["key"]) {
			return true; break;
		} else {
			return false;
		}
	}
}


//DRIVER CODE:
// var phrase_array = ["long phrase","longest phrase","longer phrase"];
// console.log(longest_phrase(phrase_array))

// var phrase_array2 = ["1", "12", "123"];
// console.log(longest_phrase(phrase_array2))

var person1 = {name: "Steven", age: 4};
var person2 = {name: "Tamir", age: 54};
console.log(has_match(person1, person2))