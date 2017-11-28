
var food = prompt("Steak, fruit salad, tofurkey or pork chops. What is your menu choice?");

if(food == "fruit salad" || food == "tofurkey"){
	document.getElementById("result").innerHTML = ("This cuisine is vegan friendly");
}else{
	document.getElementById("result").innerHTML = ("Vegans beware!");
}

