class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.decimal :total_rental_amount, precision: 6, scale: 2
      t.decimal :tax, precision: 6, scale: 2

      t.timestamps
    end
  end
end
