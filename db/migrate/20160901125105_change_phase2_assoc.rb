class ChangePhase2Assoc < ActiveRecord::Migration
  def change
    remove_column :phase2s, :business_id
    add_reference :phase2s, :business, index: true
  end
end
