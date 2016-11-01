class RemoveFirstFromPredictions < ActiveRecord::Migration
  def change
    remove_column :predictions, :first, :string
  end
end
