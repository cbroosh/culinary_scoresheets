class TeamsController < ApplicationController
    before_filter :find_competition
    before_filter :find_scoresheets
    
    def show
        @team = Team.find(params[:id])
    end
    
    def index
        @teams = Team.all
    end
    
private
   def find_competition
       @competition = Competition.find(params[:competition_id]) 
   end
   
   def find_scoresheets
       @scoresheets = Scoresheet.all
   end
end
