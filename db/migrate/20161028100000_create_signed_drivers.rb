class CreateSignedDrivers < ActiveRecord::Migration
  def change
    create_table :signed_drivers do |t|
      t.integer :driver_id
      t.integer :team_id

      t.timestamps null: false
    end
  end
end
