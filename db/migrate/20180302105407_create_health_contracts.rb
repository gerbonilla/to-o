class CreateHealthContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :health_contracts do |t|
      t.integer :min_age
      t.integer :max_age
      t.string :company
      t.string :gender

      t.timestamps
    end
  end
end
