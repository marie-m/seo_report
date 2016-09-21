class ChangeVerticalColName < ActiveRecord::Migration
  def change
      rename_column :verticals, :type, :name
  end
end
