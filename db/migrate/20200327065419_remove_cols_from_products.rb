class RemoveColsFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :‘1st_class’, :string
    remove_column :products, :‘2nd_class’, :string
    remove_column :products, :‘3rd_class’, :string
  end
end
