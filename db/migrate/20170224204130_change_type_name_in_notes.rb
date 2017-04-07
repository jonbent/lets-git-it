class ChangeTypeNameInNotes < ActiveRecord::Migration[5.0]
  def change
    rename_column :notes, :type, :note_type
  end
end
