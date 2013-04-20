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

class Bulletin < ActiveRecord::Base
  attr_accessible :event_id, :status
  belongs_to :event
  has_many :comments
end
