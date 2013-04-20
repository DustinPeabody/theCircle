class Task < ActiveRecord::Base
  attr_accessible :completed, :event_id, :type
end
