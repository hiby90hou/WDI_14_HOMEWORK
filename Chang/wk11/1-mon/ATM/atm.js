class Atm{
	constructor(type = "checking"){
		this.type = type
		this.money = 0
		this.transactionHistory = []
	}
	withdraw(num){
		if(this.type === "checking" || num < this.money){
			console.log('withdraw '+num)
			this.money -= num
			this.transactionHistory.push(-num)
		}else{
			console.log('can not withdraw')
		}
	}
	deposit(num){
		this.money += num
		this.transactionHistory.push(num)
	}
	showBalance(){
		console.log(this.money)
	}
}

const myAtmChecking = new Atm
myAtmChecking.showBalance()

myAtmChecking.deposit(10)
myAtmChecking.showBalance()

myAtmChecking.withdraw(5)
myAtmChecking.showBalance()

myAtmChecking.withdraw(10)
myAtmChecking.showBalance()

const myAtmSaving = new Atm("saving")
myAtmSaving.showBalance()

myAtmSaving.deposit(10)
myAtmSaving.showBalance()

myAtmSaving.withdraw(5)
myAtmSaving.showBalance()

myAtmSaving.withdraw(10)
myAtmSaving.showBalance()

console.log(myAtmSaving.type)