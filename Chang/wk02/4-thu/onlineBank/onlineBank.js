var saving = document.querySelector(".saving");
var inputSaving = document.querySelector(".inputSaving");
var savingWithdraw = document.querySelector(".savingWithdraw");
var savingDeposit = document.querySelector(".savingDeposit");

var checking = document.querySelector(".checking");
var inputChecking = document.querySelector(".inputChecking");
var checkingWithdraw = document.querySelector(".checkingWithdraw");
var checkingDeposit = document.querySelector(".checkingDeposit");

var result = [];
//saving account
result[0] = 0;
//checking account
result[1] = 0;

checkZero();

function withdraw(accountOrder,showing,input){
	//check input type
	var inputLocal;
	if(input.value){
		inputLocal = Number(input.value);
	}else{
		inputLocal = Number(input);
	}

	if(result[accountOrder] - inputLocal>=0){
		result[accountOrder] -= inputLocal;
		var resultStr = outputResult(accountOrder);
		showing.textContent = resultStr;
		if(input.value){
			input.value = null;
		}

	}

	// if withdraw from checking account - overdraft protection
	else if (input.value && result[0]+result[1]>=inputLocal) {
		var smallWithdraw = inputLocal-result[accountOrder];
		
		//set checking to 0
		result[accountOrder] = 0;
		showing.textContent = "$00.00";
		if(input.value){
			input.value = null;
		}
		if(accountOrder==1){
			withdraw(0,saving,smallWithdraw);
		}else{
			withdraw(1,checking,smallWithdraw);
		}
	}
	// if withdraw from saving account - overdraft protection
	// else if (input.value && accountOrder==0 && result[0]+result[1]>=inputLocal) {
	// 	var smallWithdraw = inputLocal-result[0];
		
	// 	result[0] = 0;
	// 	showing.textContent = "$00.00";
	// 	if(input.value){
	// 		input.value = null;
	// 	}
	// 	withdraw(1,checking,smallWithdraw);
	// }
	else{
		alert("Error!");
		input.value = null;
	}
	checkZero();
}


function deposit(accountOrder,saving,inputSaving){
	result[accountOrder] += Number(inputSaving.value);

	var resultStr = outputResult(accountOrder);
	saving.textContent = resultStr;
	inputSaving.value = null;
	checkZero();
}

function outputResult(accountOrder){
	var resultStr = (Math.floor(result[accountOrder]*100)).toString();

	if(result[accountOrder] < 0.01){
		resultStr = "0000"
	}else if(result[accountOrder]<1){
		resultStr = "00"+resultStr;
	}else if(result[accountOrder]<10){
		resultStr = "0"+resultStr;
	}

	resultStr = "$" +  [resultStr.slice(0, -2), ".", resultStr.slice(-2)].join('');
	return resultStr;
}

function checkZero(){
	if(result[0] == 0){
		saving.style.color = "red";
	}else{
		saving.style.color = "#bbb";
	}

	if(result[1] == 0){
		checking.style.color = "red";
	}else{
		checking.style.color = "#bbb";
	}
}
//saving account
var accountOrderSaving = 0;
savingDeposit.addEventListener("click",function(){
    deposit(accountOrderSaving,saving,inputSaving);
}, false);
savingWithdraw.addEventListener("click",function(){
    withdraw(accountOrderSaving,saving,inputSaving);
}, false);

//checking account
var accountOrderCheck = 1;
checkingDeposit.addEventListener("click",function(){
    deposit(accountOrderCheck,checking,inputChecking);
}, false);
checkingWithdraw.addEventListener("click",function(){
    withdraw(accountOrderCheck,checking,inputChecking);
}, false);