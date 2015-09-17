module TeamsHelper
    def team_score(this_team)
        app_serve_score = Scoresheet.where(team: this_team).average(:app_serve_method)
        app_portion_score = Scoresheet.where(team: this_team).average(:app_portion_nutrition)
        app_creativity_score = Scoresheet.where(team: this_team).average(:app_creativity_compatibility)
        app_flavor_score = Scoresheet.where(team: this_team).average(:app_flavor_texture_doneness)
        entree_serve_score = Scoresheet.where(team: this_team).average(:entree_serve_method)
        entree_portion_score = Scoresheet.where(team: this_team).average(:entree_portion_nutrition)
        entree_creativity_score = Scoresheet.where(team: this_team).average(:entree_creativity_compatibility)
        entree_flavor_score = Scoresheet.where(team: this_team).average(:entree_flavor_texture_doneness)
        if Scoresheet.where("team = ?", this_team).exists?
            return app_serve_score + app_portion_score + app_flavor_score + app_creativity_score + entree_serve_score + entree_portion_score + entree_creativity_score + entree_flavor_score
        else
            return ""
        end
    end
end
