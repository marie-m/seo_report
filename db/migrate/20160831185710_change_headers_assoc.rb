class ChangeHeadersAssoc < ActiveRecord::Migration
  def change
    remove_column :headers, :phase1_id
    add_reference :headers, :phase1, index: true
  end
end
