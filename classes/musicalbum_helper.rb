require_relative 'musicalbum'
require_relative '../modules/add_musicalbum'
require_relative '../modules/list_musicalbums'
require_relative '../modules/preserve_musicalbum'
require_relative 'genre'
require_relative '../modules/add_genre'
require_relative '../modules/list_genres'
require_relative '../modules/preserve_genre'

class MusicAlbumHelper
  include AddMusicAlbum
  include ListMusicAlbums
  include PreserveMusicAlbums
  include AddGenre
  include ListGenres
  include PreserveGenres

  attr_accessor :music_album, :genres

  def initialize
    @music_albums = []
    @genres = []
    read_music_album(@music_albums)
    read_genre(@genres)
  end

  def music_album_menu()
    puts
    puts 'Welcome to MusicAlbum catalog, Please select an Option: '

    loop do
      options = [
        '1 - List All MusicAlbums', '2 - List All Genres',
        '3 - Add MusicAlbum', '4 - Back to Main Menu',
        '5 - Quit'
      ]

      puts '------------------------'
      puts options
      puts '------------------------'
      print 'option: '
      choice = gets.chomp.to_i

      if choice == 4
        write_file
        puts 'You Are Back to Main Menu'
        break
      end
      perform_action(choice)
    end
  end

  def perform_action(option)
    case option
    when 1
      list_all_music_albums(@music_albums)
    when 2
      list_all_genres(@genres)
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

  def write_file
    write_music_album(@music_albums)
    write_genre(@genres)
    puts 'Thank You for using this app!'
  end
end
