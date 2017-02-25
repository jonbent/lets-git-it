class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.integer :releases
      t.integer :completed
      t.references :scoreboard, foreign_key: true

      t.timestamps
    end
  end
end
