require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :email, :user_name, :password
  # linking should be available for both models
  has_many :cases_users
  has_many :cases, through: :cases_users

  has_many :comments

  # users.password_hash in the database is a :string

# CR in rails you just need has_secure_password
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end

