class ChangeCategoryTagsTableNameToListingTags < ActiveRecord::Migration[5.1]
  def change
    rename_table :category_tags, :listing_tags
  end
end
