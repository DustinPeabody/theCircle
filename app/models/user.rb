# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  first_name       :string(255)
#  last_name        :string(255)
#  user_type        :string(255)
#  oauth_expires_at :datetime
#  provider         :string(255)
#  uid              :string(255)
#  oauth_token      :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :user_type
  has_many :comments

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.image = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
