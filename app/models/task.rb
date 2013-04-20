# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  event_id   :integer
#  completed  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Task < ActiveRecord::Base
  attr_accessible :completed, :event_id, :type
  belongs_to :event
  has_many :activities, :through => :activities_tasks
end
