class AddUserAthHash < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_hash, :string
  end
end
