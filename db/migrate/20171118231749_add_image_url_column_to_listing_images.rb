class AddImageUrlColumnToListingImages < ActiveRecord::Migration[5.1]
  def change
    add_column :listing_images, :image_url, :string
    remove_column :listing_images, :image_id
  end
end
