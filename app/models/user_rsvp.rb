class UserRsvp < ActiveRecord::Base
  attr_accessible :event_id, :rsvp, :user_id
end
