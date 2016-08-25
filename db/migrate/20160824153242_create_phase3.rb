class CreatePhase3 < ActiveRecord::Migration
  def change
    create_table :phase3s do |t|
      
      t.integer :xmlSitemap
      t.integer :visitorSitemap
      t.integer :internalAudit
      t.integer :externalAudit
      t.integer :contactForm
      t.integer :map
      
      t.timestamps
    end
  end
end
