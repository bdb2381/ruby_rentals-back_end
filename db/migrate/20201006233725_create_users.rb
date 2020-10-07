class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
