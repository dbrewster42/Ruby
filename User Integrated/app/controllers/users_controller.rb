class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
	end
	def create
		puts params
		User.create(first_name: params[:first], last_name: params[:last], email: params[:email], age: params[:age])
		redirect_to "/users"
	end
	def show
		render json: User.find(params[:id])
	end
	def total
		render json: { total: User.count}
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		puts params
		user = User.find(params[:id])
		user.update(first_name: params[:first], last_name: params[:last], email: params[:email], age: params[:age])
		user.save
		redirect_to "/users"
	end
	# private
	# def user_params
	# 	params.require(:hero).per
end
