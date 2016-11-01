class RemoveSecondFromPredictions < ActiveRecord::Migration
  def change
    remove_column :predictions, :second, :string
  end
end
