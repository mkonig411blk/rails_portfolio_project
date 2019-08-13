module TeamsHelper
    def team_city_sport(team)
        "#{team.name} (#{team.city} - #{team.sport})"
    end

end
