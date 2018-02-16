var num = Number(process.argv[2]);
var sum = 0;

for(var i = 0; i < num; i++){
	if(i%3 === 0 || i%5 === 0){
		sum += i;
	}
}

console.log(sum);