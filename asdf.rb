def guess_number guess
    number = 25
	if guess == 25
		p "You got it"		
	elsif guess > 25		 	 
		puts "Guess was too high"	
	else
		puts "Guess was too low"
	end
end 

guess_number 24