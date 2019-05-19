module SongsHelper
    def song_params(*args)
        params.require(:song).permit(*args)
    end
end
