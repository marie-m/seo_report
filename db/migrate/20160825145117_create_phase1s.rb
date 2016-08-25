class CreatePhase1s < ActiveRecord::Migration
  def change
    create_table :phase1s do |t|
      
      t.string :mobileFriendly
      t.string :wwwOrNot
      t.string :napFormat
      t.string :robotsTXT
      
      t.integer :business_id
      
      t.timestamps
    end
  end
end
