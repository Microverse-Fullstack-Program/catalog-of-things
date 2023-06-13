require_relative '../genre'

module AddGenre
  def add_genre(genres)
    puts
    puts 'Adding a new Genre:'
    print 'Please enter the genre name: '
    name = gets.chomp

    genre = Genre.new(name)
    genres << genre
    puts 'Genre added successfully!'
  end
end
