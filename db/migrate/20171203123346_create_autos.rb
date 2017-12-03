class CreateAutos < ActiveRecord::Migration[5.1]
  def change
    create_table :autos do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :ownerType
      t.string :autoBrand
      t.string :autoModel
      t.string :autoFeatures, array: true, default: []
      t.string :autoCity
      t.string :ownerDUI
      t.string :ownerDOB
      t.string :ownerNIT
      t.string :ownerGender
      t.string :ownerOccupation
      t.string :ownerPhone

      t.timestamps
    end
  end
end
