class Photo < ApplicationRecord
  belongs_to :place
  belongs_to :user
  
  mount_uploader :picture, PictureUploader
end
