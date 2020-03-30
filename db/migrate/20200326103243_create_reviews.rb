class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :grade
      t.text :merits
      t.text :demerits
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
