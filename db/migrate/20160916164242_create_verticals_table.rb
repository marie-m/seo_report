class CreateVerticalsTable < ActiveRecord::Migration
  def change
    create_table :verticals do |t|
      
      t.string :type
      t.string :icon
      
      t.timestamps
    end
  end
end
