class Listing < ActiveRecord::Base
  has_many :listing_images
  has_many :listing_tags
  has_many :tags, through: :listing_tags
  belongs_to :user
  belongs_to :location
  belongs_to :category
end
