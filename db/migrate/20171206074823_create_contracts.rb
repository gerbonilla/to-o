class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :company
      t.integer :damageToThirdParties
      t.integer :partialLoss
      t.integer :totalLoss
      t.string :coverage
      t.string :benefits
      t.integer :annualCost

      t.timestamps
    end
  end
end
