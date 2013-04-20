class Event < ActiveRecord::Base
  attr_accessible :date, :location_id, :title
end
