class Listing < ActiveRecord::Base
  has_many :listing_images
  has_one :feature_image, :class_name => 'ListingImage'

  belongs_to :user
  belongs_to :location
end
