# == Schema Information
#
# Table name: activities_tasks
#
#  id          :integer          not null, primary key
#  activity_id :integer
#  task_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ActivitiesTask < ActiveRecord::Base
  attr_accessible :task_id, :activity_id
  belongs_to :activity
  belongs_to :task
end
