class CreateCoverages < ActiveRecord::Migration[5.1]
  def change
    create_table :coverages do |t|
      t.string :coverage_type
      t.integer :amount
      t.integer :deductible
      t.boolean :important
      t.references :accident, foreign_key: true

      t.timestamps
    end
  end
end
