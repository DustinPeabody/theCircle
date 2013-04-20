# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  first_name :string(255)
#  last_name  :string(255)
#  user_type  :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :user_type
  has_many :comments
  has_and_belongs_to_many :events
end
