class AddVoteScoreToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :vote_score, :integer
  end
end
