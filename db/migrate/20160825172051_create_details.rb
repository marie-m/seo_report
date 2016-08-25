class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      
      t.string :pageName
      t.string :pageTitle
      t.text :pageDescript
      t.text :h1Tags
      t.text :h2Tags
      
      t.integer :phase1_id
      
      t.timestamps
    end
  end
end
