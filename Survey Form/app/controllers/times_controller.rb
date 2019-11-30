class TimesController < ApplicationController
	def index
		@time = Time.now
		# Time.zone = 'Central Time (US & Canada)'
		# @date = Time.zone.now.strftime("%b %d, %Y, %I:%M %p")
		# @date = @time.strftime("%b %d, %Y ")
	end
	def create
		user = User.create(user_params)

		if session[:count]
			session[:count] += 1
		else
			session[:count] = 1
		end
		if user.valid?
			redirect_to "/result"
		else
			redirect_to "/"
		end
		session[:u] = user
		
	end
	def result
		@infos = User.all		
		@boss = session[:u]
		@times = session[:count]
		
		puts "NO CAKE FOR YOU #{@boss}"
	end
	private
		def user_params
			params.require(:user).permit(:name, :location, :comment)
		end
	
end
