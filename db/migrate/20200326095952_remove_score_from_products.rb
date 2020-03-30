class RemoveScoreFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :score, :integer
  end
end
