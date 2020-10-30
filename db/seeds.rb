class Seed
  def self.begin
    seed = Seed.new
    seed.generate_movies
  end

  def generate_movies
    25.times do |i|
      movie = Movie.create!(title: Faker::Movie.title)
      puts "Added movie: #{movie.title}"
    end
  end
end

Seed.begin