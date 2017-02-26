class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :phase
      t.string :cohort
      t.integer :total_points

      t.timestamps
    end
  end
end
