class GamesController < ApplicationController

    def new
        # if team_id is passed through as a param & that team does not exist, redirect to the team index page
        if params[:team_id] && !Team.exists?(params[:team_id])
            redirect_to teams_path
        else
            @game = Game.new(home_team_id: params[:team_id])
            @team = Team.find(params[:team_id])
        end
    end

    def create
        @game = Game.new(game_params)
        @game.save
        redirect_to mygames_path
    end

    def index
        @games = Game.all
    end

private

    def game_params
        params.require(:game).permit!
    end

end
