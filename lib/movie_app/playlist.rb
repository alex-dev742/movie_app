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

  def roll_die
    rand(1..6)
  end

  def list_movies
    puts "\nMovie list:\n\n"
    @movies.each do |movie|
      puts "#{movie.name}, #{movie.rating}"
    end
  end

  def play
    @movies.each do |movie|
      case roll_die
      when 1..2
        movie.thumb_down
        puts "#{movie.name} has been thumbs down"
      when 3..4
        puts "Nothing happened for #{movie.name}"
      else
        movie.thumb_up
        puts "#{movie.name} has been thumbs up"
      end
    end
  end
end