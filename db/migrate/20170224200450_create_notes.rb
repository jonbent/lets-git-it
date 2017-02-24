class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :body
      t.string :type
      t.references :scoreboard, foreign_key: true

      t.timestamps
    end
  end
end
