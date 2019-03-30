class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user.comments.each do |comment|
      if !comment.place.present?
        comment.destroy
      end
    end
  end
  
  def update 
    @user = User.find(params[:id])
    
    if @user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
    
    @user.update_attributes(user_params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def user_params
    params.require(:user).permit(:profile_image)
  end
end
