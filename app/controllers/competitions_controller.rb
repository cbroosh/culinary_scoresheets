class CompetitionsController < ApplicationController
    def new
        @competition = Competition.new(params[:competition_id])
        3.times { @competition.judges.build }
        3.times { @competition.teams.build }
    end
    
    def create
        @competition=Competition.new(competition_params)
        if @competition.save
            flash[:success] = "Competition Created"
            redirect_to @competition
        else
            flash[:danger] = "Something went wrong"
            redirect_to new_competition_path
        end
    end
    
    def show
        @competition = Competition.find(params[:id])
    end
    
    def index
       @competitions = Competition.all 
    end
    
    private
    def competition_params
       params.require(:competition).permit(:start_date, :competition_id, :title, :judges_attributes => [:competition_id, :name], :teams_attributes => [:competition_id, :name]) 
    end
end
