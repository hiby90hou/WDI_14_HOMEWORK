import React from 'react'

// putting html to your js -jsx
export default class PasswordBlock extends React.Component{
	constructor(props) {
    super(props)
    this.changeText = this.changeText.bind(this);
    this.state = { 
      password: '' 
    }
  }

  changeText(event){
		this.setState({password: event.target.value})
  }

	checkpasswordPoint(string){
		var score = 0;
		if(/[a-z]/.test(string)){
			score += 1;
		}

		if(/[A-Z]/.test(string)){
			score += 1;
		}

		if(/[0-9]/.test(string)){
			score += 1;
		}

		if(string.length>8){
			score += 1;	
		}

		if(/[^a-zA-Z\d\s:]/.test(string)){
			score +=1;
		}
		return score
	}

	render(){
		const checkpassword = this.state.password

		return <div>
			<input type="text" onChange={this.changeText} />
			<span>{this.checkpasswordPoint(this.state.password)} point</span>
		</div>
	}
}