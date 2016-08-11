house = {
	living_room: {
		wall_color: "beige",
		furniture: [
			"couch",
			"television",
			"coffee table",
			"thermostat"
		],
		decoration: [
			"cave painting",
			"wedding photo",
			"grandfather clock"
		],
		lights: {
			total_switches: 8,
			current_switches_on: 6
		}
	},
	kitchen: {
		wall_color: "red",
		furniture: [
			"refridgerator",
			"toaster oven",
			"coffee maker",
			"microwave"
		],
		decoration: [
			"cutting board",
			"wine rack",
			"flower vase"
		],
		lights: {
			total_switches: 4,
			current_switches_on: 2
		}
	},
	garage:{
		wall_color: "white",
		furniture: [
			"cars",
			"workbench",
			"tool box",
			"lawnmower"
		],
		decoration: [],
		lights: {
			total_switches: 3,
			current_switches_on: 0
		}
	},
	bedroom:{
		wall_color: "blue",
		furniture: [
			"bed",
			"dresser",
			"armoire",
			"end table"
		],
		decoration: [
			"family portrait",
			"string lights",
			"ornate mirror"
		],
		lights: {
			total_switches: 2,
			current_switches_on: 0
		}
	},
	bathroom:{
		wall_color: "green",
		furniture: [
			"towel basket"
		],
		decoration: [
			"clock",
			"fancy soap",
			"candle"
		],
		lights: {
			total_switches: 2,
			current_switches_on: 0
		}
	},
	closet:{
		wall_color: "white",
		furniture: [
			"washer",
			"dryer",
			"laundry hamper",
			"linens"
		],
		decoration: [],
		lights: {
			total_switches: 1,
			current_switches_on: 1
		}
	}
}

# This should print out how many light switches are on in the kitchen, should return "2".
p house[:kitchen][:lights][:current_switches_on]

# This should print out the decorations in the garage, should be none.
p house[:garage][:decoration]

# This should print out the 3rd piece of furniture in the living room, should be "coffee table".
p house[:living_room][:furniture][2]

# This should print out the wall color in the bathroom, should be "blue".
p house [:bedroom][:wall_color]

# This should print out the wall color in the bathroom, and make it all capital letters, should be "GREEN".
p house [:bathroom][:wall_color].upcase

# This should return the list of furniture in the closet, but in reverse order, should be "linens", "laundry hamper", "dryer", "washer".
p house [:closet][:furniture].reverse