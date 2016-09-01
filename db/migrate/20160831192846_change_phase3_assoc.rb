class ChangePhase3Assoc < ActiveRecord::Migration
  def change
    remove_column :phase3s, :business_id
    add_reference :phase3s, :business, index: true
  end
end
