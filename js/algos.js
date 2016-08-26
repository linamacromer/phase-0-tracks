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

var phrase_array = ["long phrase","longest phrase","longer phrase"];
console.log(longest_phrase(phrase_array))

var phrase_array2 = ["short", "longish", "superduperlong"];
console.log(longest_phrase(phrase_array2))