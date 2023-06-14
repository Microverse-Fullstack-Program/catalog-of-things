require_relative '../classes/genre'

describe Genre do
  before :each do
    @genre = Genre.new('Hip Hop')
  end

  describe '#new' do
    it 'Should create a new genre object' do
      expect(@genre).to be_instance_of Genre
    end
  end

  context 'when genre object created' do
    it 'Should return the name to be Hip Hop' do
      expect(@genre.name).to eq 'Hip Hop'
    end

    it 'Should return the items to be an empty array' do
      expect(@genre.items).to eq []
    end
  end
end
