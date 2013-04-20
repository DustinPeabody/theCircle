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

require 'test_helper'

class ActivitiesTasksTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
