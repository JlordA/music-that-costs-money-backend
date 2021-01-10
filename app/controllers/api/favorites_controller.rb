class Api::FavoritesController < ApplicationController

    private
    
    def favorite_params
        params.permit(:user_id, :album_id)
    end
    
end