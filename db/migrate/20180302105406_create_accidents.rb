class CreateAccidents < ActiveRecord::Migration[5.1]
  def change
    create_table :accidents do |t|
      t.integer :min_age
      t.integer :max_age
      t.string :family
      t.string :contract_type
      t.string :company

      t.timestamps
    end
  end
end
