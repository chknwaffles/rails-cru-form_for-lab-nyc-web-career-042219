class GenresController < ApplicationController
    include GenresHelper
    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params(:name))

        redirect_to genre_path(@genre)
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params(:name))

        redirect_to genre_path(@genre)
    end
end
