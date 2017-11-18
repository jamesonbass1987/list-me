class AddNameImageLocationColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :profile_image, :string
    add_column :users, :location_id, :integer

  end
end
