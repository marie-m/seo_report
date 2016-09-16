class AddTrendsToPhase1 < ActiveRecord::Migration
  def change
    add_column :phase1s, :googleTrends, :text
  end
end
