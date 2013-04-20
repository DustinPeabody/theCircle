class User < ActiveRecord::Base
  attr_accessible :email, :name, :type
  has_and_belongs_to_many :events
end
