class AddCenterToTerapist < ActiveRecord::Migration[7.0]
  def change
    add_reference :terapists, :center, null: true, foreign_key: true
  end
end
