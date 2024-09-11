require_relative "../lib/movie_app/playlist"

playlist = Playlist.new("Alex's Playlist")

playlist.add_movie("22 Jump Street")
playlist.add_movie("Game of Thrones")
playlist.add_movie("The 100")



playlist.play
playlist.list_movies