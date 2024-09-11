require "minitest/autorun"

require_relative "../../lib/movie_app/movie"

class MovieTest < Minitest::Test

  def setup
    @movie = Movie.new("test", 5)
  end

  def test_has_capitalized_name
    assert_equal "Test", @movie.name
  end

  def test_can_thumbs_up
    @movie.thumb_up

    assert_equal 6, @movie.rating
  end

  def test_can_thumbs_down
   @movie.thumb_down

    assert_equal 4, @movie.rating
  end

  def test_rating_cannot_be_lower_than_0
    6.times { @movie.thumb_down }
    assert_equal 0, @movie.rating
  end

  def test_rating_cannot_be_higher_than_10
    
  end
end