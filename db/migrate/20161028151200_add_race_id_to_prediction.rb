class AddRaceIdToPrediction < ActiveRecord::Migration
  def change
    add_column :predictions, :race_id, :integer
  end
end
