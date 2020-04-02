class DropKidUsers < ActiveRecord::Migration[5.2]
  def change
    drop_table :kid_users
  end
end
