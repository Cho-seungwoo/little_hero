class AddNameToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :score, :integer
  end
end
