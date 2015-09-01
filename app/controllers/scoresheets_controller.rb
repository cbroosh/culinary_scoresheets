class ScoresheetsController < ApplicationController
    before_filter :find_competition
    
    def new 
       
    end
    
    
    private
    def scoresheet_params
       params.require(:scoresheet).permit(:app_serve_method, :app_portion_nutrition, :app_creativity_compatibility, :app_flavor_texture_doneness, :app_comments, :entree_serve_method, :entree_portion_nutrition, :entree_creativity_compatibility, :entree_flavor_texture_doneness, :entree_comments, :competition_id) 
    end
    
    def find_competition
       @competition = Competition.find_by(params[:competiton__id]) 
    end
end
