class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.string :first
      t.string :second
      t.string :third

      t.timestamps null: false
    end
  end
end
