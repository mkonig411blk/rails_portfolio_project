module GamesHelper

    def home_team_name(game)
        team = Team.find_by(id: game.home_team_id)
        @home_team_name = team.name
    end

    def away_team_name(game)
        team = Team.find_by(id: game.away_team_id)
        @away_team_name = team.name
    end

    def converted_datetime(game)
        if game.date
            game.date.strftime("%B %d, %Y")
        else
        end
    end

end
