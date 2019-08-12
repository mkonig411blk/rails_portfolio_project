class SignupsController < ApplicationController

    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.new(signup_params)
        @signup.save
    end
end
