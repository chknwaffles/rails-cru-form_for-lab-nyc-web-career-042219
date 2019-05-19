module ArtistsHelper
    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end
