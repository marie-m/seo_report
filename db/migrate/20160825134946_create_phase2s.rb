class CreatePhase2s < ActiveRecord::Migration
  def change
    create_table :phase2s do |t|
      
      t.string :seoFriendly
      t.string :copyHasKeywords
      t.string :freshContent
      t.string :imagesNamed
      t.string :blackHatFree
      t.string :goodLoading
      t.string :socialMedia
      t.string :webcrawlerFirendly
      t.string :googleAnalytics
      t.string :webmasterTools
      t.string :localBusiness
      
      t.integer :business_id
      
      t.timestamps
    end
  end
end
