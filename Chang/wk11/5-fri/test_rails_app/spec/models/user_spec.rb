describe User do
	it 'is invalid without a name' do
		expect(User.new).to_not be_valid
	end

	it 'is invalid if password is less than 8' do
		expect(User.create(:name => 'Jamie', :password =>'123456')).to_not be_valid
	end

	it 'is valid if password is more than 8' do
		expect(User.create(:name => 'Jamie', :password =>'123456789')).to be_valid
	end
end
