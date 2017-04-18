class AddUserRankDefault < ActiveRecord::Migration
  def change
    change_column_default :users, :userrank, "sales"
  end
end
