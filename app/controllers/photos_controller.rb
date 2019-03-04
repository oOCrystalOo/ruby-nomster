class PhotosController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    if @place.valid?
      redirect_to place_path(@place)
    else 
      render :new, status: :unprocessable_entity
    end
  end
  
  def destroy 
    @place = Place.find(params[:place_id])
    @photo = Photo.find(params[:id])
    if @photo.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
    
    @photo.destroy
    redirect_to place_path(@place)
  end
  
  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end
