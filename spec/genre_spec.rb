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


  end
end
