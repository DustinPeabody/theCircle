class Location < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :zip
  has_many :events
end
