class AddUserToKidUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :kid_users, :user, foreign_key: true
  end
end
