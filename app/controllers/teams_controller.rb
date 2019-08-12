class TeamsController < ApplicationController

    def index
        @teams = Team.all
    end

    def myindex
        @user = current_user
        @myteams = @user.teams
    end

    def create
        @team = Team.new(team_params)
        @team.save
    end

    def show
        @team = Team.find(params[:id])
        @teamsignups = @team.signups
    end
end
