class AddMetaToPhase1 < ActiveRecord::Migration
  def change
    add_column :phase1s, :currentHomeTitle, :text
    add_column :phase1s, :currentHomeMeta, :text
  end
end
