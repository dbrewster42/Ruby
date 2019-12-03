class StrippersController < ApplicationController
	before_action :set_stripper, only: [:update, :edit, :show, :destroy]
	before_action :set_club, only: [:new, :create, :edit, :destroy, :update, :strip_params]
  def index
  end
  def new
  end
  def create
  	strip = Stripper.create(strip_params)
  	if strip.valid?
  		redirect_to club_path(@club.id)
  	else
  		redirect_to new_club_stripper_path(@club.id), alert: strip.errors.full_messages
  	end
  end

  def edit
  	# @club = Club.find(params[:club_id])
  	# @stripper = Stripper.find_by(id: params[:id])
  end
  def update
  	puts "aslkdfj ;kljsakldf jklja skldfj skad #{@stripper.talent}"
  	# strip = Stripper.find(params[:id])
  	@stripper.update(strip_params)
  	if @stripper.valid?
  		redirect_to club_path(@club.id)
  	else
  		redirect_to edit_club_stripper_path(@club.id, @stripper.id), alert: @stripper.errors.full_messages
  	end
  end
  def show
  	
  end
  private 
  def strip_params  
  	params.require(:stripper).permit(:name, :talent).merge(club: @club)
  end
  def set_stripper
  	@stripper = Stripper.find(params[:id])
  end
  def set_club
  	@club = Club.find(params[:club_id])
  end
end
