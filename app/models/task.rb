class Task < ActiveRecord::Base
  attr_accessible :completed, :event_id, :task_type
  belongs_to :event
  belongs_to :activity
end
