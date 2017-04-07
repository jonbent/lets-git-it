class AddWeekDayAndCohortToChallenges < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :week, :integer
    add_column :challenges, :day, :string
    add_column :challenges, :cohort, :string
  end
end
