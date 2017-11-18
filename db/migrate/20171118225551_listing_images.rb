class ListingImages < ActiveRecord::Migration[5.1]
  def change
    create_table :listing_images do |t|
      t.integer :listing_id
      t.integer :image_id
    end
  end
end
