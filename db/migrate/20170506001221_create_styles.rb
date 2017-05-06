class CreateStyles < ActiveRecord::Migration[5.0]
  def change
    create_table :styles do |t|
      t.string :type
      t.boolean :color
      t.boolean :wash
      t.boolean :cash
      t.boolean :check
      t.text :other

      t.timestamps
    end
  end
end
