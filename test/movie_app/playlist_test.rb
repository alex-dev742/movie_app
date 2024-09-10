require "minitest/autorun"

require_relative "../../lib/movie_app/movie"
require_relative "../../lib/movie_app/playlist"

class PlaylistTest < Minitest::Test
  def setup
    @playlist = Playlist.new("Test")
    @playlist.add_movie("Test")
  end


  def test_can_add_movie_to_playlist
    refute_empty @playlist.movies
  end
end