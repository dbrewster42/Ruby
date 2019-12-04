require_relative 'bankaccount'

RSpec.describe BankAccount do
	before(:each) do 
		@test = BankAccount.new
		@test2 = BankAccount.new(2000, 2000)
	end
	it "has a getter method for checking account balance" do
		expect(@test.checking_balance).to eq(0)
		expect(@test2.checking_balance).to eq(2000)
	end
	it "Has a getter method that retrieves the total account balance" do
		expect(@test.total_balance).to eq(0)
		expect(@test2.total_balance).to eq(4000)
	end
	it 'Has a function that allows the user to withdraw cash' do
		# expect(@test.withdraw_checking 100).to raise_error(" You have insufficient funds for this transaction ")
		expect(@test2.withdraw_checking 1000).to eq(1000)
	end
	it 'Raises an error when the user attempts to retrieve the total number of bank accounts' do
		expect(@test.total_accounts).to raise_error(NoMethodError)
	end
	it "raises an error when the user attempts to set the interest rate" do
		expect{ @test.interest }.to raise_error(NoMethodError)
	end


end