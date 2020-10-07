class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :brand
      t.string :model
      t.string :item_type
      t.string :size
      t.text :description
      t.string :gear_photo_url
      t.integer :model_year
      t.integer :amount_available
      t.integer :day_rental_price  # cost to rent for 1 day/24 hours

      t.timestamps
    end
  end
end
