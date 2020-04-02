class CreateKidUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :kid_users do |t|
      t.references :user, foreign_key: true
      t.integer :sex
      t.date :birthday

      t.timestamps
    end
  end
end
