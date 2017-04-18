class AddUserRanks < ActiveRecord::Migration
  def change
     add_column :users, :userrank, :string
  end
end
