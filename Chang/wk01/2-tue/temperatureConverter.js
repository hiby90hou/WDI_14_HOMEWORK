var celsius = prompt('Input a celsius temperature');

// °C to °F	Multiply by 9, then divide by 5, then add 32

document.getElementById("result1").innerHTML = "celsius = " + celsius + " fahrenheit = " + (celsius*9/5+32);

var fahrenheit = prompt('Input a fahrenheit temperature');

// °F to °C	Deduct 32, then multiply by 5, then divide by 9

document.getElementById("result2").innerHTML = "fahrenheit = " + fahrenheit + " celsius = " + (fahrenheit-32)*5/9;