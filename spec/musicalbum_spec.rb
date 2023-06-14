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
end
