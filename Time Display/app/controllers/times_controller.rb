class TimesController < ApplicationController
	def index
		@time = Time.zone = 'Central Time (US & Canada)'
		# Time.zone = 'Central Time (US & Canada)'
		# @date = Time.zone.now.strftime("%b %d, %Y, %I:%M %p")
		# @date = @time.strftime("%b %d, %Y ")
	end
end
# %l:%M %p