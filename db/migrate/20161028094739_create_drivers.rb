class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :driver_name

      t.timestamps null: false
    end
  end
end
