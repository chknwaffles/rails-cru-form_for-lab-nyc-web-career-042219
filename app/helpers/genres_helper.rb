module GenresHelper
    def genre_params(*args)
        params.require(:genre).permit(*args)
    end
end
