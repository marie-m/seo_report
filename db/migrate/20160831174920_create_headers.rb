class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      
      t.string :pageName
      t.string :pageTitle
      t.text :pageDescript
      t.text :h1Tags
      t.text :h2Tags
      
      t.integer :phase1_id
      t.integer :business_id
      
      t.timestamps
    end
  end
end
