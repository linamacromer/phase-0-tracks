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

function Car(make,model,color,year) {
	console.log("Initializing car construction...");
	this.make = make;
	this.model = model;
	this.color = color;
	this.year = year;
	this.honk = function() {
		console.log("*HONK!!*");
	}
	console.log("Car complete!");
}

var car1 = new Car("Subaru", "Legacy", "Red", 2013);
console.log(car1);
car1.honk();
console.log("-------");

var car2 = new Car("Volkswagon","Jetta", "White", 2010);
console.log(car2);
car2.honk();
console.log("-------");