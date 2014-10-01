class Case < ActiveRecord::Base
  # Removed status, winner, active_start, active_end
  attr_accessible :title, :summary, :user_id
  belongs_to :user
  has_many :comments
  validates :title, presence: true

end
