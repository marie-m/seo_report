class Phase1 < ActiveRecord::Base
    belongs_to :business
    # has_many :details
    
     has_many :headers, dependent: :destroy
    accepts_nested_attributes_for :headers
end