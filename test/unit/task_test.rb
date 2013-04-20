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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
