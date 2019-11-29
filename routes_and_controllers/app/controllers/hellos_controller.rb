class HellosController < ApplicationController
  def index  	
  	puts "Hello"
  end
  def hello
  	render text: "Hello Coding Dojo!"
  end

  def say
  	if params[:name]
  		if params[:name] == "joe"
  			render text: "Saying Hello Joe!"  			
  		elsif params[:name] == "michael"
  			redirect_to "/say/hello/joe"
  		else
  			redirect_to "/say/hello"
  		end
  	else
  		render text: "Saying Hello!"
  	end
  end

  def times
  	 session[:counter] = 0 if !session.has_key?(:counter)
  	session[:counter] += 1
  	@count = session[:counter]
	# render "times"
	# text: "You have visited this url #{@times} times!"
  end
  def reset
  	session.clear
  	render plain: "COUNTER DESTROYED!"
  end


  	# if session[:count]
  	# 	session[:count] += 1
  	# else
  	# 	session[:count] = 1
  	# end
  	
  
end
