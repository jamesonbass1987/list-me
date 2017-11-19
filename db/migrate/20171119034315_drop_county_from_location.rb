class DropCountyFromLocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :county
  end
end
