class AddSalesScoreToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sales_score, :integer
  end
end
