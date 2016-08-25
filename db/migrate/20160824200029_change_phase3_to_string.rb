class ChangePhase3ToString < ActiveRecord::Migration
  def change
    change_column :phase3s, :xmlSitemap, :string
    change_column :phase3s, :xmlSitemap, :string
    change_column :phase3s, :visitorSitemap, :string
    change_column :phase3s, :internalAudit, :string
    change_column :phase3s, :externalAudit, :string
    change_column :phase3s, :contactForm, :string
    change_column :phase3s, :map, :string
  end
end
