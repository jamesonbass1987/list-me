class DropZipCodeFromLocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :zip_code
  end
end
