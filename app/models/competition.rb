class Competition < ActiveRecord::Base
    has_many :judges
    accepts_nested_attributes_for :judges
    has_many :teams
end


