class AddPhase3Question < ActiveRecord::Migration
  def change
     add_column :phase3s, :conversionOp, :string
  end
end
