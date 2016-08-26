colors = ["blue", "green", "red", "orange"];
names = ["Ed", "Bob", "Sally", "Carly"];

colors.push("purple");
names.push("Jane");

console.log(colors)
console.log(names)

function createhorse(color,name){
	horses[name] = color
};

horses = {}

for (var i = 0; i < colors.length; i++) {
	createhorse(colors[i],names[i]);
}

console.log(horses)