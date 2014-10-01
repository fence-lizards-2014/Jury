class Evidence < ActiveRecord::Base
  attr_accessible :argument, :video_url, :photo_url, :case_id
  belongs_to :case
  validates :argument, presence: true

end
