var express = require('express');
var app = express();
const PORT = 8080;

app.set('views', './views');
app.set('view engine','ejs');

function getColor(){
	var colors = ["#FFBF00", "#0080FF", "#01DF3A", "#FF0080"]
	return colors[Math.floor(Math.random() * colors.length)]
}

function getGreeting(){
	var compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Shut up and take my money",
  "It's almost beer o'clock",
  "The Force is strong with you"
	];
	return compliments[Math.floor(Math.random() * compliments.length)]
}

app.get('/:tagId',function(req, res){
	var sayHi = getGreeting()
	var color = getColor()
	var name = req.params.tagId

	res.render('name', {sayHi:sayHi, color:color, name:name})
})

app.get('/', function (req, res) {

	var sayHi = getGreeting()
	var color = getColor()

	console.log(sayHi)
	console.log(color)
	// send is strings
  res.render('index', {sayHi:sayHi, color:color})
});

app.use(function(req,res,next){
	res.send("404");
})
	


app.listen(PORT, function () {
  console.log('Example app listening on port 8080!');
});