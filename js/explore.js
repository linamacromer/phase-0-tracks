// Take a string as a parameter and reverse string
// Find the string's length and set the counter to the length
// Run a loop that prints the counter index and subtracts 1 from counter until it reaches zero

var str = "hello";
var length = str.length - 1;

for (var i = length; i > -1; i+= -1) {
	console.log(str[i])
}