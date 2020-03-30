class AddColsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :first_class, :string
    add_column :products, :second_class, :string
    add_column :products, :third_class, :string
  end
end
