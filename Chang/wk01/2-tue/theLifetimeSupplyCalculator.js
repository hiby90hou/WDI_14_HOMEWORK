// - Store your current age into a variable.
// - Store a maximum age into a variable.
// - Store an estimated amount per day (as a number).
// - Calculate how many you would eat total for the rest of your life.
// - Output the result to the screen like so: "You will need NN to last you until the ripe old age of X".
var currentAge = 27;
var maxAge = 100;
var estimatedAmount = 3;

var totalEat = (maxAge - currentAge) * 365 * estimatedAmount;
document.getElementById("result").innerHTML = ("You will need " + totalEat + " meals to last you until the ripe old age of " + maxAge + ".");