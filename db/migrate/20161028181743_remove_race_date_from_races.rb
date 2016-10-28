class RemoveRaceDateFromRaces < ActiveRecord::Migration
  def change
    remove_column :races, :race_date, :datetime
  end
end
