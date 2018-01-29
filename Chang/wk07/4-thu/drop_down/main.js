var cityStr = "NYC, SF, LA, SYD, ATX";
var cityArr = cityStr.split(", ");
var dropdownList = document.querySelector("#city-type")
var background = document.querySelector("body");

cityArr.forEach(function(city){
	console.log(city);
	var dropdownContent = document.createElement("option");

	dropdownContent.innerHTML = city;
	dropdownContent.value = city;
	dropdownList.appendChild(dropdownContent);
})

dropdownList.addEventListener('change',function(){
	background.classList = [];
	background.classList.add(dropdownList.value.toLowerCase());
});