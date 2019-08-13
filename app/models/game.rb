class Game < ApplicationRecord

    def converted_datetime
        if date
            date.strftime("%B %d, %Y")
        else
        end
    end

    def home_team_name
        team = Team.find_by(id: home_team_id)
        @home_team_name = team.name
    end

    def away_team_name
        team = Team.find_by(id: away_team_id)
        @away_team_name = team.name
    end

end
