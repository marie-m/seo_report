class RemovePhase3DiscardedCols < ActiveRecord::Migration
  def change
    remove_column :phase3s, :externalAudit
  end
end
