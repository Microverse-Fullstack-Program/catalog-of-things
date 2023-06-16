module ListMusicAlbums
  def list_all_music_albums(music_albums)
    puts
    if music_albums.empty?
      puts 'No Music Album found!'
      puts 'Press enter to continue'
      gets
      return
    end

    puts 'Listing all MusicAlbums:'
    puts '-' * 100
    music_albums.each do |music_album|
      print ' ' * 5
      print "Id: #{music_album.id}, Title: #{music_album.title}, On_Spotify: #{music_album.on_spotify}, "
      puts "Publish Date: #{music_album.publish_date}, Archived: #{music_album.archived}"
      puts '-' * 100
    end
    puts
    puts 'Press any key to continue'
    gets
  end
end
