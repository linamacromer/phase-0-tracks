console.log("Test")

function addBorder(event) {
	var photo = document.getElementById("puppypic")
	photo.style.border = "20px dashed green";
};

function flipPic(event) {
	var photo = document.getElementById("puppypic")
	photo.style.transform = "scaleX(-1)"
	photo.style.filter = "FlipH"
};

var border_button = document.getElementById("border_button");
border_button.addEventListener("click", addBorder);

var flip_button = document.getElementById("flip_button");
flip_button.addEventListener("click", flipPic);