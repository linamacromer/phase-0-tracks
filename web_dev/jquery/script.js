console.log("test")

$(document).ready(function() {
	$("button").hover(function() {
		$(this).toggleClass("green")
	});
	$("button").click(function() {
		$(this).html("!")
	});
	$("button").dblclick(function() {
		$(this).fadeOut("slow")
	});
});