class ArtistsController < ApplicationController
    include ArtistsHelper
    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params(:name, :bio))

        redirect_to artist_path(@artist)
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
        @artist = Artist.update(artist_params(:name, :bio))

        redirect_to artist_path(@artist)
    end
end
