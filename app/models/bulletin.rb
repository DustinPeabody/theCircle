class Bulletin < ActiveRecord::Base
  attr_accessible :event_id, :status
  belongs_to :event
  has_many :comments
end
