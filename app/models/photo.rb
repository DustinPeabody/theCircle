class Photo < ActiveRecord::Base
  attr_accessible :activity_id
  belongs_to :activity
end
