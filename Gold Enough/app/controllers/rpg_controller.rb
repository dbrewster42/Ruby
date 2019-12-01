class RpgController < ApplicationController
	def index
		unless session[:gold]
			session[:gold] = 0
		end
		@gold = session[:gold]
		if session[:activities]
			@logs = session[:activities]
			puts @logs
		else
			session[:activities] = ["Lets play a game", "Are you ready?"]
		end
	end
	def add
		date = Time.now.strftime("%Y/%m/%d at %l:%M %p")		
		if params[:move] == "cave"
			money = rand(5..10)			
		elsif params[:move] == "farm"
			money = rand(10..20)			
		elsif params[:move] == "house"
			money = rand(2..5)			
		else
			money = rand(-50..50)			
		end
		session[:gold] += money		
		if money < 0
			session[:activities].push("Entered a casino and lost #{money} golds.. Ouch.. (#{date})")
		else
			session[:activities].push("Earned #{money} golds from the #{params[:move]}! (#{date})")		
		end		
		redirect_to '/'
	end
	def clear
		session.clear
		redirect_to '/'
	end

end
