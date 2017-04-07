class AddCommitsToScoreboard < ActiveRecord::Migration[5.0]
  def change
    add_column :scoreboards, :commits, :integer
  end
end
