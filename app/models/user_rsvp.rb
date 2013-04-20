# == Schema Information
#
# Table name: user_rsvps
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  event_id   :integer
#  rsvp       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserRsvp < ActiveRecord::Base
  attr_accessible :event_id, :rsvp, :user_id
end
