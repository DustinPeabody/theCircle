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
  attr_accessible :latitude, :longitude, :time, :user_id, :photo_attr
  belongs_to :user
  has_many :activities_tasks
  has_many :tasks, :through => :activities_tasks
  has_many :photos
  accepts_nested_attributes_for :photos, :reject_if => lambda { |t| t['photo'].nil? }

  acts_as_gmappable :process_geocoding => false



  def gmaps4rails_infowindow
    # add here whatever html content you desire, it will be displayed when users clicks on the marker
    "<img src=\"#{self.photos.first.photo.url unless self.photos.first.nil?}\"> #{self.user_id}"
  end

  def gmaps4rails_title
    # add here whatever text you desire
    ""
  end

  #def gmaps4rails_marker_picture
  #  {
  #    "picture" => ,          # string,  mandatory
  #    "width" =>  ,          # integer, mandatory
  #    "height" => ,          # integer, mandatory
  #    "marker_anchor" => ,   # array,   facultative
  #    "shadow_picture" => ,  # string,  facultative
  #    "shadow_width" => ,    # string,  facultative
  #    "shadow_height" => ,   # string,  facultative
  #    "shadow_anchor" => ,   # string,  facultative
  #    "rich_marker" =>   ,   # html, facultative
  #    # If used, all other attributes skipped except "marker_anchor". This array is used as follows:
  #    # [ anchor , flat ] : flat is a boolean, anchor is an int.
  #    # See doc here: http://google-maps-utility-library-v3.googlecode.com/svn/trunk/richmarker/docs/reference.html
  #  }
  #end
end
