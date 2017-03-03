class AddPictureUrl < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :picture_url, :string
  end
end
