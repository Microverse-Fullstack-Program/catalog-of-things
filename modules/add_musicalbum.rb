require_relative '../classes/musicalbum'
require_relative './parse_to_date'

module AddMusicAlbum
  include ParseToDate

  def add_music_album(musicalbums)
    puts
    puts 'Adding a new Music Album:'
    print 'Please enter the title of Music Album: '
    title = gets.chomp
    print 'Enter date of release (DD-MM-YYYY): '
    date_string = gets.chomp
    publish_date = parse_to_date(date_string)
    print 'Album listed on spotify? (Y/N): '
    on_spotify = gets.chomp

    music_album = MusicAlbum.new(title, on_spotify, publish_date)
    musicalbums << music_album
    puts 'Music Album added successfully!'
  end
end
