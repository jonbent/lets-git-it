class AddCohortToScoreboards < ActiveRecord::Migration[5.0]
  def change
    add_column :scoreboards, :cohort, :string
  end
end
