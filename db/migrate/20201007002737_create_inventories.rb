class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.string :sku
      t.boolean :rental_status
      t.string :condition
      t.date :date_bought
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
