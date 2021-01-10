class Api::UsersController < ApplicationController

    def create
        user= User.create(user_params)
        render json: user
    end

    def login
        user = User.find_by(username: params[:username])
        if (user && user.authenticate(params[:password]))
            render json: {user: user}
        else
            render json: {errors: "invalid username"}
        end
    end

    private

    def user_params
        params.permit(:name, :password, :bio, :img)
    end
end