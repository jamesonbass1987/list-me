class Location < ActiveRecord::Base
  has_many :listings
  has_many :users


  def self.find_by_slug(location_id)
    Location.find_by(id: location_id)
  end

  def full_name
    self.city + ", " + self.state
  end

end
