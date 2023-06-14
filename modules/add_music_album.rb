require_relative '../classes/music_album'

module AddMusicAlbum
  def add_music_album(musicalbums)
    puts
    puts 'Adding a new Music Album:'
    print 'Please enter the title of Music Album: '
    title = gets.chomp
    print 'Enter date of release (YYYY-MM-DD): '
    publish_date = gets.chomp
    print 'Album listed on spotify? (Y/N): '
    on_spotify = gets.chomp

    music_album = MusicAlbum.new(title, on_spotify, publish_date)
    musicalbums << music_album
    puts 'Music Album added successfully!'
  end
end
