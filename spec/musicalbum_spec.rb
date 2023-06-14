require_relative '../classes/musicalbum'

describe MusicAlbum do
  before do
    @music_album = MusicAlbum.new('Woy Fikir', 'yes', '1994/07/13')
  end

  describe '#new' do
    it 'Should create a new music album object' do
      expect(@music_album).to be_instance_of MusicAlbum
    end
  end

  context 'when music album object created' do
    it 'Should return the title to be "Woy Fikir"' do
      expect(@music_album.title).to eq 'Woy Fikir'
    end

    it 'Should return the publish date to be 1994/07/13' do
      expect(@music_album.publish_date).to eq '1994/07/13'
    end

    it 'Should return the on_spotify to be true' do
      expect(@music_album.on_spotify).to eq 'yes'
    end
  end

  context 'when invalid publish date is given' do
    it 'Should raise an error when publish date is not in YYYY-MM-DD format' do
      expect {MusicAlbum.new('Woy Fikir', 'yes', '1994')}.to raise_error(ArgumentError)
    end
  end

  context 'check if the music album can be archived' do
    it 'Should return false when release date is not older than 10 years' do
      music_album = MusicAlbum.new('Woy Fikir', 'yes', '2020-07-13')
      expect(music_album.archived).to be false
    end

    it 'Should return false when on_spotify is false' do
      music_album = MusicAlbum.new('Woy Fikir', 'No', '1994-11-13')
      expect(music_album.archived).to be false
    end

    it 'Should return true when release date is older than 10 years and on_spotify is true' do
      MusicAlbum.new('Woy Fikir', 'yes', '2001/11/13')
      expect(@music_album.archived).to be true
    end
  end
end
