// Store the following into variables: number of children, partner's name, geographic location, job title. 
// Output your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."
var childrenNum = Math.floor(Math.random()*5);

var childString;

// solve the s problem
if(childrenNum === 1){
	childString = ' with ' + childrenNum + ' kid.';
}else if (childrenNum > 1){
	childString = ' with ' + childrenNum + ' kids.';
}else{
	childString = '.';
}

var partnerName = 'Haofu';

var geographicLocationArr = ['Adelaide', 'Sydney', 'Brisbane', 'Hobart', 'Melbourne','Perth'];
var geographicLocation = geographicLocationArr[(Math.floor(Math.random()*(geographicLocationArr.length)))];

var jobTitleArr = ['programmer','auditor', 'graphic designer', 'engineer'];
var jobTitle = jobTitleArr[(Math.floor(Math.random()*(jobTitleArr.length)))];

// RegExp, if start with vowel, return true
var re =new RegExp(/^[a,e,i,o,u]/);
if(re.test(jobTitle)){
	jobTitle = 'an ' + jobTitle;
}else{
	jobTitle = 'a ' + jobTitle;
}


var outcome = 'You will be ' + jobTitle + ' in ' + geographicLocation + ', and married to ' + partnerName + childString;
console.log(outcome);
document.getElementById("result").innerHTML = outcome;