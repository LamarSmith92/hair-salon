class AddInfoToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :first_name, :string
    add_column :appointments, :last_name, :string
    add_column :appointments, :email, :string
    add_column :appointments, :phone, :integer
    add_column :appointments, :notes, :text
    add_column :appointments, :date, :datetime
  end
end
