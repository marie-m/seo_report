class AddPhase3Cols < ActiveRecord::Migration
  def change
     add_column :phase3s, :favicon, :string
     add_column :phase3s, :flashFree, :string
  end
end
