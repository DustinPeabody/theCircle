# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  completed  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  task_type  :string(255)
#  name       :string(255)
#

class Task < ActiveRecord::Base
  attr_accessible :completed, :event_id, :task_type, :name
  belongs_to :event
  has_many :activities_tasks
  has_many :activities, :through => :activities_tasks
end
