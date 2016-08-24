class AddPhase3ToUser < ActiveRecord::Migration
  def change
    add_column :phase3s, :business_id, :integer
  end
end
