require "minitest/autorun"

require_relative "../../lib/movie_app/movie"

class MovieTest < Minitest::Test
  def test_has_capitalized_name
    movie = Movie.new("fast 'n furios")

    assert_equal "Fast 'n furios", movie.name
  end

  def test_can_thumbs_up
    movie = Movie.new("fast 'n furios", 5)
    movie.thumb_up

    assert_equal 6, movie.rating
  end

  def test_can_thumbs_down
    movie = Movie.new("fast 'n furios", 5)
    movie.thumb_down

    assert_equal 4, movie.rating
  end
end