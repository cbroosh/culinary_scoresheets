class CompetitionsController < ApplicationController
    def new
        @competition = Competition.new
        3.times { @competition.judges.build }
    end
    
    def create
        @competition=Competition.new(competition_params)
        if @competition.save
            session[:competition_id] = @competition.id
            redirect_to '/'
        else
            redirect_to new_competition_path
        end
    end
    
    private
    def competition_params
       params.require(:competition).permit(:judge, :team, :start_date) 
    end
end
