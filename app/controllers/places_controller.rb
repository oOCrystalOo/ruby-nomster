class PlacesController < ApplicationController
  def index
    per_page = 1
    puts params[:page]
    @pages_num = Place.all.length / per_page
    @places = Place.paginate(:page => params[:page], :per_page => per_page)
  end
  
  def new
    
  end
end
