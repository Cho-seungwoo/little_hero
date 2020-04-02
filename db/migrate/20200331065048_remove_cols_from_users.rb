class RemoveColsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :kid_gender, :binary
    remove_column :users, :kid_birthdate, :date
  end
end
