class AddColsToKidUser < ActiveRecord::Migration[5.2]
  def change
    add_column :kid_users, :sex, :integer
    add_column :kid_users, :birthday, :date
  end
end
