class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :transaction, null: false, foreign_key: true
      t.references :inventory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
