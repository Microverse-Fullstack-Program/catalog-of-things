module ListGames
  def list_games(games)
    return puts 'Game list is empty' if games.empty?

    games.each_with_index do |game, index|
      puts
      puts "Game No #{index + 1}:"
      puts "publish date: #{game.publish_date}"
      puts "last played at: #{game.last_played_at}"
      puts "multiplayer: #{game.multiplayer}"
      puts "archived: #{game.archived}"
    end
  end
end
