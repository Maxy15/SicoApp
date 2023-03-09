class CreatePyschologists < ActiveRecord::Migration[7.0]
  def change
    create_table :pyschologists do |t|
      t.string :name
      t.string :medicalSpecialty

      t.timestamps
    end
  end
end
