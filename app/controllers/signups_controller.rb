class SignupsController < ApplicationController

    def new
        # if team_id is passed through as a param & that team does not exist, redirect to the team index page
        if params[:team_id] && !Team.exists?(params[:team_id])
            redirect_to teams_path
        else
            @signup = Signup.new(team_id: params[:team_id])
            @team = Team.find(params[:team_id])
        end
    end

    def create
        @signup = Signup.new(signup_params)
        @signup.user_id = current_user.id
        @signup.save
        redirect_to myteams_path
    end

    private

    def signup_params
        params.require(:signup).permit(:team_id, :skill_level)
    end

end
