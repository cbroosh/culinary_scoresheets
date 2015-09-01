class Scoresheet < ActiveRecord::Base
    belongs_to :Competition
    has_many :judges, through: :Competition
    has_many :teams, through: :Competition 
end
