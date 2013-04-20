class Comment < ActiveRecord::Base
  attr_accessible :bulletin_id, :message, :user_id
end
