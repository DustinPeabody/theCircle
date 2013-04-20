# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  date        :date
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  attr_accessible :date, :location_id, :title, :location
  belongs_to :location
  has_many :tasks
  has_many :bulletins
  
  validates_uniqueness_of :title, :scope => [:date]
end
