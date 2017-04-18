class AddUserNames < ActiveRecord::Migration
  def change
    
     remove_column :users, :username, :text
     add_column :users, :username, :string
  end
end
