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

# This should print out how many light switches are on in the kitchen.
p house[:kitchen][:lights][:current_switches_on]