class Business < ActiveRecord::Base
    has_many :phase1s
    has_many :phase2s
    
    has_many :phase3s, dependent: :destroy
    accepts_nested_attributes_for :phase3s
    
    def self.search(search)
    #   where("name LIKE ? OR ingredients LIKE ? OR cooking_instructions LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
      where("name LIKE ? OR address LIKE ? OR url LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    end
end