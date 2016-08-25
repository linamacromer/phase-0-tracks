// Take a string as a parameter and reverse string
// Find the string's length and set the counter to the length
// Run a loop that adds the counter index to the reversed string and subtracts 1 from counter until it reaches zero

function reverse(str) {
	var reversed = "";
	for (var i = str.length -1; i > -1; i+= -1) {
		reversed = reversed + str[i];
	}
	return reversed
}

// Driver code:

var str1 = reverse("hello");
var str2 = reverse("abcdefg")

var test = 2

if (test == 1) {
	console.log("hello reversed is "+str1);
} else if (test == 2) {
	console.log("abcdefg reversed is "+str2);
} else {
	console.log("error")
}
