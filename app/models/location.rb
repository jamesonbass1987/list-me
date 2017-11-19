class Location < ApplicationRecord
  has_many :listings
  has_many :users
end
