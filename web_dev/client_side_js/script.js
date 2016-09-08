console.log("Test")

function addBorder(event) {
	var photo = document.getElementById("puppypic")
	photo.style.border = "20px dashed green";
}

var border_button = document.getElementById("border_button");
border_button.addEventListener("click", addBorder);
