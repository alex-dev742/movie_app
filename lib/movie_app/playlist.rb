require_relative "movie"

class Playlist

  attr_reader :movies

  def initialize(playlist_name)
    @playlist_name = playlist_name
    @movies = []
  end

  def add_movie(movie_name)
    @movies << Movie.new(movie_name)
  end

  def play
    puts "The current list of movies are:\n\n"
    @movies.each do |movie|
      puts "#{movie.name} with a score of #{movie.rating}"
    end
  end
end