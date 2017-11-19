class Listing < ActiveRecord::Base
  has_many :listing_images
  has_one :feature_image, :class_name => 'ListingImage'
end
