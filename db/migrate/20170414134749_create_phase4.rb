class CreatePhase4 < ActiveRecord::Migration
  def change
    create_table :phase4s do |t|
      
      t.string   :copyHasKeywords
      t.string   :freshContent
      t.string   :imagesNamed
      t.string   :socialMedia
      t.string   :googleAnalytics
      t.string   :webmasterTools
      t.string   :localBusiness
      t.string   :optimized
      t.string   :shortURL
      t.string   :blackHatFree
      t.string   :titleHasKeywords
      t.string   :xmlSitemap
      t.string   :visitorSitemap
      t.string   :internalAudit
      t.string   :contactForm
      t.string   :map
      t.string   :favicon
      t.string   :flashFree
      t.string   :conversionOp
      
      t.integer :business_id
      
      t.timestamps
    end
  end
end
