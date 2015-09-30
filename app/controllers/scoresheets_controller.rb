class ScoresheetsController < ApplicationController
    before_filter :find_competition
    before_filter :require_admin, only: [:show, :index]
    
    def new 
       @scoresheet = Scoresheet.new(params[:id])
    end
    
    def create
        @scoresheet = Scoresheet.new(scoresheet_params)
        if @scoresheet.save
            flash[:success] = "Scores submitted"
            redirect_to [@competition, @scoresheet] # Don't forget to go back and change this. It should route back to the 'new' page for judges. The show page is for Competition owners, same for index pages.
        else 
            flash[:danger] = "Something went wrong"
            redirect_to new_competition_scoresheet_path(@competition)
        end
    end
    
    def show
       @scoresheet = Scoresheet.find( params[:id] )
    end
    
    def destroy
        @scoresheet = Scoresheet.find(params[:id])
        @scoresheet.destroy
        redirect_to @competition
    end
    
    def index
        @scoresheets = Scoresheet.all
        @scoresheet = Scoresheet.find_by(params[:scoresheet_id])
    end
    
    
    private
    def scoresheet_params
       params.require(:scoresheet).permit(:judge, :team, :scoresheet_id, :app_serve_method, :app_portion_nutrition, :app_creativity_compatibility, :app_flavor_texture_doneness, :app_comments, :entree_serve_method, :entree_portion_nutrition,
       :entree_creativity_compatibility, :entree_flavor_texture_doneness, :entree_comments, :competition_id) 
    end
    
    def find_competition
       @competition = Competition.find(params[:competition_id]) 
    end
end
