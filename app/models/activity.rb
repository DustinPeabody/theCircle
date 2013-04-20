class Activity < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :time, :user_id
end
