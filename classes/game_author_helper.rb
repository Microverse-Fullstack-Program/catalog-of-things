require_relative '../modules/list_games'
require_relative '../modules/list_authors'
require_relative '../modules/add_game'
require_relative '../modules/add_author'
require_relative '../modules/preserve_games'

class GameAuthorHelper
  include ListGames
  include ListAuthors
  include AddGame
  include AddAuthor
  include PreserveGamesAndAuthors

  def initialize
    @games = read_games_file
    @authors = read_author_file
  end

  def write_files
    write_games(@games)
    write_authors(@authors)
  end

  def games_and_authors_menu()
    puts
    puts 'Welcome to games catalog, Please select an Option: '

    loop do
      options = [
        '1 - List all games', '2 - List all authors',
        '3 - Add new game', '4 - Add new author', '5 - Back to Main Menu',
        '6 - Quit'
      ]

      puts '------------------------'
      puts options
      puts '------------------------'
      print 'option: '
      choice = gets.chomp.to_i

      if choice == 5
        write_files
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
      add_game(@games)
    when 4
      add_author(@authors)
    when 6
      write_files
      exit
    else
      puts 'Invalid Option'
    end
  end
end
