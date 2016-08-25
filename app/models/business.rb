class Business < ActiveRecord::Base
    has_many :phase1s
    has_many :phase2s
    has_many :phase3s
end