require 'json'

module PreserveMusicAlbums
  def write_music_album(musicalbums)
    file = File.open('./data/music_album.json', 'w+')

    music_album_hash = {}
    musicalbums.each_with_index do |music_album, index|
      music_album_hash[(index + 1).to_s] = { 'id' => music_album.id, 'title' => music_album.title,
                                             'on_spotify' => music_album.on_spotify,
                                             'publish_date' => music_album.publish_date,
                                             'archived' => music_album.archived }
    end
    file.write(JSON.pretty_generate(music_album_hash))
  end

  def read_music_album(musicalbums)
    file = File.open('./data/music_album.json', 'r') if File.exist?('./data/music_album.json')
    return false if file.nil?

    return unless file.size.positive?

    musicalbums_record = JSON.parse(file.read)
    musicalbums_record.each do |_key, music_album|
      musicalbums << MusicAlbum.new(music_album['title'], music_album['on_spotify'], music_album['publish_date'])
    end
  end
end
