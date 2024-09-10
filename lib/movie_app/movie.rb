class Movie
  attr_reader :name, :rating
  def initialize(name, rating = 5)
    @name = name.capitalize
    @rating = rating
  end

  def thumb_up
    @rating += 1
  end

  def thumb_down
    @rating -= 1
  end
end