# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  bulletin_id :integer
#  message     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :bulletin_id, :message, :user_id
  belongs_to :user
  belongs_to :bulletin
end
