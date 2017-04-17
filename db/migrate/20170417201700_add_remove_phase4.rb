class AddRemovePhase4 < ActiveRecord::Migration
  def change
    
     add_column :phase4s, :blog, :string
     add_column :phase4s, :video, :string
     add_column :phase4s, :sslcertificate, :string
     add_column :phase4s, :duplicateSites, :string
     add_column :phase4s, :friendlyNav, :string
     add_column :phase4s, :metaKeywords, :string
     add_column :phase4s, :clickToCall, :string
     
     
     remove_column :phase4s, :copyHasKeywords, :string
     remove_column :phase4s, :freshContent, :string
     remove_column :phase4s, :imagesNamed, :string
     remove_column :phase4s, :socialMedia, :string
     remove_column :phase4s, :googleAnalytics, :string
     remove_column :phase4s, :webmasterTools, :string
     remove_column :phase4s, :localBusiness, :string
     remove_column :phase4s, :optimized, :string
     remove_column :phase4s, :shortURL, :string
     remove_column :phase4s, :blackHatFree, :string
     remove_column :phase4s, :titleHasKeywords, :string
     remove_column :phase4s, :xmlSitemap, :string
     remove_column :phase4s, :visitorSitemap, :string
     remove_column :phase4s, :internalAudit, :string
     remove_column :phase4s, :contactForm, :string
     remove_column :phase4s, :map, :string
     remove_column :phase4s, :favicon, :string
     remove_column :phase4s, :flashFree, :string
     remove_column :phase4s, :conversionOp, :string

  end
end
