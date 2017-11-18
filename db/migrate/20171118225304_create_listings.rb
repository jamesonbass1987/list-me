class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.integer :location_id

      t.timestamps
    end
  end
end
