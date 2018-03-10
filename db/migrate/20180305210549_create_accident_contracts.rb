class CreateAccidentContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :accident_contracts do |t|
      t.references :accident, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :contract_type
      t.string :age
      t.string :gender
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
