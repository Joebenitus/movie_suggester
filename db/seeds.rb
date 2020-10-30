class Seed
  
  def self.begin
    Movie.destroy_all
    seed = Seed.new
    seed.generate_movies
  end

  def generate_movies
    100.times do |i|
      movie = Movie.create!(title: Faker::Movie.title)
      puts "Added movie: #{movie.title}"
    end
  end
end

Seed.begin