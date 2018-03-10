class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :plan_type
      t.integer :annual_installments
      t.integer :amount_cents
      t.integer :annual_amount_cents
      t.references :accident, foreign_key: true

      t.timestamps
    end
  end
end
