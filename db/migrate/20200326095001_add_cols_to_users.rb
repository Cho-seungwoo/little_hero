class AddColsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gender, :binary
    add_column :users, :kid_gender, :binary
    add_column :users, :birthdate, :date
    add_column :users, :kid_birthdate, :date
  end
end
