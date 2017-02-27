class AddNumberOfCommitsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :number_commits, :integer
  end
end
