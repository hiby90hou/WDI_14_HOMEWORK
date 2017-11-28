// Store the current year in a variable.
// Store their birth year in a variable.
// Calculate their 2 possible ages based on the stored values.
// Output them to the screen like so: "They are either NN or NN", substituting the values.

var currentYear = new Date().getFullYear().toString();

console.log("currentYear = " + currentYear);

var birthYear = prompt("What is your possible birth year?");

if(birthYear > currentYear){
	alert('Please input a valid birth year!')
}else if(birthYear == currentYear){
document.getElementById("result").innerHTML = "You are 0 year old";	
}else{
document.getElementById("result").innerHTML = "You are either " + (currentYear-birthYear-1) + " or " + (currentYear-birthYear);}
