class TeamsController < ApplicationController

    def index
        @teams = Team.all
    end

    def myindex
        @myteams = current_user.signups.teams
    end

    def create
        @team = Team.new(team_params)
        @team.save
    end

    def show
        @team = Team.find(params[:id])
    end
end
