class Task < ActiveRecord::Base
  attr_accessible :completed, :event_id, :type
  belongs_to :event
end
