// console.log(process.argv);
var arr = process.argv;
var resultArr = ['node'];
var result = 0

resultArr.push(process.argv[1]);
arr.forEach(function(elem,index){
	if(index > 1 && index < arr.length){
		resultArr.push(process.argv[index])
		result += Number(process.argv[index])
	}
})

// console.log(resultArr);
console.log(result);
