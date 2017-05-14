class ChangeDataTypeForPhone < ActiveRecord::Migration[5.0]
  def change
    change_column :appointments, :phone, :string
  end
end
