# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  latitude   :float
#  longitude  :float
#  time       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Activity < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :time, :user_id
  belongs_to :user
  has_many :tasks, :through => :activities_tasks
  has_many :photos
end
