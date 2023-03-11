class CreateTerapists < ActiveRecord::Migration[7.0]
  def change
    create_table :terapists do |t|
      t.string :name
      t.string :medicalSpecialty

      t.timestamps
    end
  end
end
