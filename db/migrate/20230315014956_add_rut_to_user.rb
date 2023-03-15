class AddRutToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rut, :string
  end
end
