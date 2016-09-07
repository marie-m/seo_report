class AddPhase2Cols < ActiveRecord::Migration
  def change
     add_column :phase2s, :optimized, :string
     add_column :phase2s, :shortURL, :string
     add_column :phase2s, :blackHatFree, :string
  end
end
