class Evidence < ActiveRecord::Base
  attr_accessible :argument, :video_url, :photo_url, :case_id, :user_id, :cases_user_id

  validates :argument, presence: true
  validates :case_id, presence: true
  validates :user_id, presence: true

  belongs_to :case
  belongs_to :user
  belongs_to :cases_user
end
