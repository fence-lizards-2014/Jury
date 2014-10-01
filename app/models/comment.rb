class Comment < ActiveRecord::Base
  attr_accessible :body, :parent_comment_id, :user_id, :case_id
  has_many :votes
  belongs_to :user
  validates :body, presence: :true
  validates :user_id, presence: :true
end
