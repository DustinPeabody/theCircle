# == Schema Information
#
# Table name: bulletins
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  status     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BulletinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
