class Comment < ActiveRecord::Base
  attr_accessible :bulletin_id, :message, :user_id
  belongs_to :user
  belongs_to :bulletin
end
