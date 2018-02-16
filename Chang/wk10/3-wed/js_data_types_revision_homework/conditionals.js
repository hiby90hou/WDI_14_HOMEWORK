// If a patron is older than 21, print out "Come on in!".
// If a patron is between 18 and 21, print out "Come on in (but no drinking)!".
// If a patron is younger than 18, print out "You're too young to be in here!".
// If a patron is older than 75, print out "Are you sure you want to be here?".

function checkAge(age){
	if(age > 75){
		console.log("Are you sure you want to be here?");
	}
	else if(age > 21){
		console.log("Come on in!");
	}
	else if(age>=18){
		console.log("Come on in (but no drinking)!")
	}else{
		console.log("You're too young to be in here!")
	}
}

hasId = {
	name:"Jack",
	has:true,
	age: 18
}

function checkId(hasTd){
	if(hasId.has){
		checkAge(hasId.age);
	}else{
		console.log("No ID, no entry.");
	}
}

checkId(hasId)

// debugger