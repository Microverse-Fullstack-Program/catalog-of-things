require_relative '../modules/list_games'
require_relative '../modules/list_authors'
require_relative '../modules/add_game'

class GameAuthorHelper
  include ListGames
  include ListAuthors
  include AddGame

  def initialize
    @games = []
    @authors = []
  end

    def games_menu()
    puts
    puts 'Welcome to games catalog, Please select an Option: '

    loop do
      options = [
        '1 - List all games', '2 - List all authors',
        '3 - Add new game', '4 - Back to Main Menu',
        '5 - Quit'
      ]

      puts '------------------------'
      puts options
      puts '------------------------'
      print 'option: '
      choice = gets.chomp.to_i

      if choice == 4
        puts 'You Are Back to Main Menu'
        break
      end
      perform_action(choice)
    end
  end

  def perform_action(option)
    case option
    when 1
      list_games(@games)
    when 2
      list_authors(@authors)
    when 3
      add_music_album(@music_albums)
      add_genre(@genres)
    when 5
      write_file
      exit
    else
      puts 'Invalid Option'
    end
  end

end
