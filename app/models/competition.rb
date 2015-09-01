class Competition < ActiveRecord::Base
    has_many :judges
    accepts_nested_attributes_for :judges
    has_many :teams
    accepts_nested_attributes_for :teams
    has_many :scoresheets
    accepts_nested_attributes_for :scoresheets
end


