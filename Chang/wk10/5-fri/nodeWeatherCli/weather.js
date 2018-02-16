const request = require('request');
// const api = require('./apiKey.js');
const api = process.env.OPEN_WEATHER_MAP_KEY;
const city = "Melbourne";

request('http://api.openweathermap.org/data/2.5/weather?appid='+api+'&units=metric&q='+ city, { json: true }, (err, res, body) => {
  if (err) { return console.log(err); }
  // console.log(body);
  console.log(Math.floor(Number(body.main.temp)));
});