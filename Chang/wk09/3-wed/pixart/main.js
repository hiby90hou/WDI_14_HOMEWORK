console.log('work');
var pen = 'color';

var setColorButton = document.querySelector('#setColorButton');
var setMovieButton = document.querySelector('#setMovieButton');

setMovieButton.addEventListener("click",function(){pen = 'movie';})
setColorButton.addEventListener("click",function(){pen = 'color';})

function changeColor(target){
	var colorName = document.querySelector('#getColorName')
	target.style.backgroundImage = "url()";
	target.style.backgroundColor = colorName.value;
	event.preventDefault();
}

function changePicture(target){
	var movieName = document.querySelector('#getMovieName').value
	console.log(movieName.value);

	$.ajax(options(movieName)).done(function(response){
		console.log("url('"+response["Poster"]+"')");
		target.style.backgroundImage = "url('"+response["Poster"]+"')";
		event.preventDefault();
	})
}

document.querySelector('#getColorName').addEventListener("keydown",function(){
	if(13 == event.keyCode){
		var target = document.querySelector('.brush');
		changeColor(target);
	}
})

for(var i = 0; i < 100; i++ ){
	var newDiv = document.createElement('div')
	newDiv.classList.add("square");
	newDiv.addEventListener("mouseover",function(event){
		if(pen=='color'){
			event.target.style.backgroundImage = "url()";
			event.target.style.backgroundColor = document.querySelector('#getColorName').value;
		}
		else{
			var position = event.target;
			changePicture(position);
		}
	})
	document.querySelector('body').append(newDiv);
}


function options(search){
  return {url: 'http://www.omdbapi.com/?apikey=2f6435d9&t='+ search}
}

// setColorButton.addEventListener("click",changeColor)

// document.querySelector('.stampBrush').addEventListener("mouseover",changePicture)
