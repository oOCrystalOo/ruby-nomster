class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place
  after_create :send_comment_email
  
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
  
  def send_comment_email
    NotificationMailer.comment_added(self).deliver_now
  end
end
