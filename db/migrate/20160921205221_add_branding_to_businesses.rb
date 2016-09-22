class AddBrandingToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :branding, :string
  end
end
