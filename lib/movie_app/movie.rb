class Movie
  attr_reader :name, :rating
  def initialize(name, rating = 5)
    @name = name.capitalize
    @rating = rating
  end

  def thumb_up
    if @rating == 10
      @rating = @rating 
      puts "The movie rating is already at its highest"
    else
      @rating += 1
    end
  end

  def thumb_down
    if @rating == 0
      @rating = @rating 
      puts "The movie rating is already at its lowest"
    else
      @rating -= 1
    end
  end
end