class Team < ActiveRecord::Base
    belongs_to :Competition
    belongs_to :Scoresheet
end
