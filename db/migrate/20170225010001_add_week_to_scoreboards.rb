class AddWeekToScoreboards < ActiveRecord::Migration[5.0]
  def change
    add_column :scoreboards, :week, :integer
  end
end
