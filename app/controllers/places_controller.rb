class PlacesController < ApplicationController
  def index
    per_page = 1
    puts params[:page]
    @pages_num = Place.all.length / per_page
    @places = Place.paginate(:page => params[:page], :per_page => per_page)
  end
  
  def new
    @place = Place.new
  end
  
  def create
    Place.create(place_params)
    redirect_to root_path
  end
  
  private
  
  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
end
