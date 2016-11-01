class RemoveThirdFromPredictions < ActiveRecord::Migration
  def change
    remove_column :predictions, :third, :string
  end
end
