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

end
