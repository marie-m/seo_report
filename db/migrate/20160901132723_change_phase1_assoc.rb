class ChangePhase1Assoc < ActiveRecord::Migration
  def change
    remove_column :phase1s, :business_id
    add_reference :phase1s, :business, index: true
  end
end
