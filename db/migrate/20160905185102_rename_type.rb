class RenameType < ActiveRecord::Migration[5.0]
  def change
    rename_column :venues, :type, :venue_type
  end
end
