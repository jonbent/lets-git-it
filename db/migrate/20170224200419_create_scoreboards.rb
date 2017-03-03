class CreateScoreboards < ActiveRecord::Migration[5.0]
  def change
    create_table :scoreboards do |t|
      t.references :user, foreign_key: true
      t.integer :day_points
      t.string :day

      t.timestamps
    end
  end
end
