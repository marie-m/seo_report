class RemoveDisgardedColumns < ActiveRecord::Migration
  def change
    remove_column :phase2s, :seoFriendly
    remove_column :phase2s, :blackHatFree
    remove_column :phase2s, :goodLoading
    remove_column :phase2s, :webcrawlerFirendly
  end
end
