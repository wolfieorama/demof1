class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :race_name
      t.datetime :race_date
      t.datetime :start_time
      t.string :track

      t.timestamps null: false
    end
  end
end
