module ListGenres
  def list_all_genres(genres)
    puts
    if genres.empty?
      puts 'No Genre found!'
      puts 'Press enter to continue'
      gets
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
    puts 'Press any key to continue'
    gets
  end
end
