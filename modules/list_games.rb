module ListGames
  def list_games(games)
    if games.empty?
      puts 'Game list is empty'
      puts 'Press enter to continue'
      gets
      return 
    end

    puts
    games.each_with_index do |game, index|
      print "Game No #{index + 1}, "
      print "publish date: #{game.publish_date}, "
      print "last played at: #{game.last_played_at}, "
      print "multiplayer: #{game.multiplayer}, "
      puts "archived: #{game.archived}"
    end
    puts
    puts 'Press any key to continue'
    gets
  end
end
