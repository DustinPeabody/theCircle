# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  first_name       :string(255)
#  last_name        :string(255)
#  user_type        :string(255)
#  oauth_expires_at :datetime
#  provider         :string(255)
#  uid              :string(255)
#  oauth_token      :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
