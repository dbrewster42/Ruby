class BankAccount
	@@total_accounts = 0
	def initialize(checking_balance = 0, savings_balance = 0)
		create_account()		
		@checking_balance = checking_balance
		@savings_balance = savings_balance
		@total = savings_balance + checking_balance
		if checking_balance != 0
			@@total_accounts += 1
		end
		if savings_balance != 0
			@@total_accounts += 1
		end
		# @interest = 0.01
		self
	end
	def t_accounts
		puts "Total accounts: #{@@total_accounts}"
		self
	end
	def account_information
		puts "Your acct# is: " + @account_number.to_s
		puts "Your Savings Balance is: #{@savings_balance}"
		puts "Your Checking Balance is: " + @checking_balance.to_s	
		total_balance()
		# puts "Total Balance: #{@total}"
		puts "Interest rate: #{interest}"					
		self
	end 
	def total_balance
		@total = @savings_balance + @checking_balance
		puts "Total Balance: #{@total}"
		self
	end
	def deposit_savings num
		@savings_balance += num
		self
	end
	def withdraw_checking num
		if num < @checking_balance
			@checking_balance -= num
		else
			puts "You have insufficient funds for this transaction"
		end
		self
	end



	private
		def create_account
			@account_number = rand(100...200)
		end
		def interest
			@interest = 0.01
		end

end
# me = BankAccount.new(1000, 1000)
# me.account_information.deposit_savings(500).withdraw_checking(300).account_information
him = BankAccount.new
him.account_information
him.t_accounts
her = BankAccount.new(9999, 20)
her.account_information.deposit_savings(9001).account_information