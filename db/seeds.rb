class Seed
  
  def self.begin
    Movie.destroy_all
    seed = Seed.new
    seed.generate_movies
  end

  def generate_movies
    def self.genres
      genres = [
      'Action',
      'Fantasy',
      'Thriller',
      'Horror',
      'Coming Of Age',
      'Romantic Comedy',
      'Comedy',
      'Science Fiction',
      'Drama',
      'Documentary',
      'War']
    end
    25.times do |i|
      movie = Movie.create!(title: Faker::Movie.title, genre: genres.sample)
      puts "Added movie: #{movie.title}, with genre: #{movie.genre}"
    end
  end
end

Seed.begin