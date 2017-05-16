class AddStyleToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_reference :appointments, :style, foreign_key: true
  end
end
