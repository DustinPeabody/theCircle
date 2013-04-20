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

class ActivitiesTasks < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :activity
  belongs_to :task
end
