class Api::AlbumsController < ApplicationController

    def index
        albums = Album.all
        render json: albums
    end

    def create
        album = Album.create(album_params)
        render json: album
    end

    private
    def album_params
        params.permit(:title, :artist, :year, :url, :thumb, :wants)
    end
end