class AddColumnsToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :state, :string
    add_column :locations, :city, :string
    add_column :locations, :county, :string
    add_column :locations, :zip_code, :string
    remove_column :locations, :name
  end
end
