require_relative "../lib/movie_app/playlist"

playlist = Playlist.new("Alex's Playlist")

playlist.add_movie("22 Jump Street")
playlist.add_movie("Game of Thrones")
playlist.add_movie("The 100")

loop do
  print "How many plays (quit to exit): "
  answer = gets.chomp

  case answer
  when /^\d+$/
      playlist.play(answer)
  when "quit", "exit"
      puts "\nQuiting Program!"
      break
  else
      "Please select how many plays you want"
  end
end

playlist.list_movies