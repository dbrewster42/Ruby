class ClubsController < ApplicationController
  def index
  	@clubs = Club.all
  end

  def new
  end
  def create
  	club = Club.create(club_params)
  	if club.valid?
  		redirect_to "/clubs"
  	else
  		redirect_to "/clubs/new", alert: club.errors.full_messages
  	end
  end
  def show
  	@club = Club.find_by(id: params[:id])
  	@strippers = Stripper.where(club: @club)
  end
  def edit
  	render "new"
  end
  def update
  end
  def destroy
  	club = Club.find(params[:id])
  	club.destroy
  	redirect_to '/clubs', alert: 'Dojo was successfully destroyed.'
  end
  private
  def club_params
  	params.require(:club).permit(:name, :city, :rating)
  end
end
