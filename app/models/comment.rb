class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place
  
  RATINGS = {
    '1': '1_star',
    '2': '2_stars',
    '3': '3_stars',
    '4': '4_stars',
    '5': '5_stars'
  }
  
  def humanize_ratings
    RATINGS.invert[self.rating].to_s.to_i
  end
end
