require_relative '../classes/game'
require_relative './parse_to_date'
require_relative './convert_to_bool'

module AddGame
  include ConvertToBool
  include ParseToDate
  def add_game(games)
    puts 'Adding a new game:'
    puts 'Enter publish date (DD-MM-YYYY)'
    date_string = gets.chomp
    publish_date = parse_to_date(date_string)
    puts 'Enter last played at date (DD-MM-YYYY)'
    date_string = gets.chomp
    last_played_at = parse_to_date(date_string)
    puts 'Is the game multiplayer? [Y, N]:'
    str = gets.chomp
    multiplayer = convert_to_bool(str)
    puts 'Is the game archived? [Y, N]:'
    str = gets.chomp
    archived = convert_to_bool(str)
    game = Game.new(multiplayer, last_played_at, publish_date, archived)
    games << game
    puts 'Game created succesfully!'
  end
end
