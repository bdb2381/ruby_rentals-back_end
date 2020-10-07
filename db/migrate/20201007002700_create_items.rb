class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :brand
      t.string :model
      t.string :type
      t.string :size
      t.text :description
      t.string :gear_photo_url
      t.integer :model_year
      t.integer :amount_available

      t.timestamps
    end
  end
end
