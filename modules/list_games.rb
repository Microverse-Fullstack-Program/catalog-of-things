module ListGames
  def list_games(games)
    return puts 'Game list is empty' if games.empty?

    games.each do |game, index|
      puts
      puts "Game No #{index + 1}:"
      print "publish date: #{game.publish_date}, last played at: #{game.last_played_at}, "
      print "multiplayer: #{game.multiplayer}, archived: #{game.archived}"
    end
  end
end
