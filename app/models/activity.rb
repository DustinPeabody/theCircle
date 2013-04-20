class Activity < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :time, :user_id
  belongs_to :user
  has_many :tasks
  has_many :photos
end
