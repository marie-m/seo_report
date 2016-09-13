class AddPhase2KeywordQ < ActiveRecord::Migration
  def change
     add_column :phase2s, :titleHasKeywords, :string
  end
end
