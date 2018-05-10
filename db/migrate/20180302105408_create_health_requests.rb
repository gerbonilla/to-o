class CreateHealthRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :health_requests do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :email
      t.string :phone_number
      t.references :health_contract, foreign_key: true

      t.timestamps
    end
  end
end
