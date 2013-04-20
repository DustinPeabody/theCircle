class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :user_type
  has_many :comments
  has_and_belongs_to_many :events
end
