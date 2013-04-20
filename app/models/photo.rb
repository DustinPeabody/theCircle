# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  activity_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Photo < ActiveRecord::Base
  attr_accessible :activity_id
  belongs_to :activity
end
