class TeamsController < ApplicationController
    
    def index
        @northtxteams = Team.all.northtx
        @southtxteams = Team.all.southtx
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
        @users = @teamsignups.collect {|s| s.user_id}
    end
end
