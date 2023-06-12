module ListGenres
  def list_all_genres(genres)
    puts
    if genres.empty?
      puts 'No Genre found!'
      return
    end

    puts 'Listing all genres:'
    puts '-' * 50
    genres.each do |genre|
      print ' ' * 5 if genre == genres.first
      print "'#{genre.name}'"
      print ',  ' unless genre == genres.last
    end
    puts
    puts '-' * 50
    puts
  end
end
