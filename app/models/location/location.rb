class Location::Location < ActiveRecord::Base
  has_many :listings
  has_many :users
end
