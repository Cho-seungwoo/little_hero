class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :first_class
      t.string :second_class
      t.string :third_class
      t.integer :counts

      t.timestamps
    end
  end
end
