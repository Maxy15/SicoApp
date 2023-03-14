class AddTerapistToCenters < ActiveRecord::Migration[7.0]
  def change
    add_reference :centers, :terapist, null: true, foreign_key: true
  end
end
