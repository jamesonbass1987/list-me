class Listing < ActiveRecord::Base
  has_many :listing_images
  has_one :feature_image, :class_name => 'ListingImage'


  def self.find_by_slug(location)

  end


  def

  end
end
