console.log("work")

var container = document.querySelector(".container");
var inputBox = document.querySelector(".inputBox");
var clickCounter = 0;

	function fetchData(){
		fetch('http://api.giphy.com/v1/gifs/search?q='+inputBox.value+'&api_key=' + config.GIPHY_API + '&limit=10&offset='+clickCounter*10)
	  .then(function(response) {
	    return response.text()
	  })
	  .then(function(data) {
	  	var picList = JSON.parse(data).data;
	  	picList.forEach(function(pic){
		  	var newPic = document.createElement('img');
		    newPic.src = pic.images.original.url;
		    console.log(pic.images.original.url);
		    container.appendChild(newPic);  			
			})
			clickCounter +=1;
		})
	}

document.querySelector("#searchButton").addEventListener("click",fetchData);

window.onscroll = function(){
	console.log("scrollsize="+(window.pageYOffset + window.innerHeight))
	console.log("pagesize="+(document.documentElement.scrollHeight))
	if(Math.ceil(window.pageYOffset + window.innerHeight) >= document.documentElement.scrollHeight){
		fetchData();
	}
}
