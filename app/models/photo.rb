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
  attr_accessible :photo, :activity_id
  belongs_to :activity
  validates_attachment_presence :photo
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png",
                    :content_type => { :content_type => "image/jpg" }
end
