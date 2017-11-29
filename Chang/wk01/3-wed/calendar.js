var days_of_the_week = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'];

console.log(days_of_the_week);

var temp = days_of_the_week.pop();

days_of_the_week.unshift(temp);

console.log(days_of_the_week);

var weekdays = days_of_the_week.slice(1,6);
var weekend = [days_of_the_week[0], days_of_the_week[6]];
console.log(weekdays);
console.log('weekend'+ weekend);


var new_days_of_the_week = [weekdays,weekend];

console.log(new_days_of_the_week);

new_days_of_the_week.pop();

new_days_of_the_week[0].sort();

console.log(new_days_of_the_week);
