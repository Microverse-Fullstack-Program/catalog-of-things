require_relative '../classes/author'
require_relative '../classes/game'

describe Author do
  before :each do
    @author = Author.new('Salomon', 'Tshobohwa')
  end

  describe '#new' do
    it 'Should create a new Author object' do
      expect(@author).to be_instance_of Author
    end
  end

  context 'when author object is created' do
    it 'Should return first_name' do
      expect(@author.first_name).to eq 'Salomon'
    end
    it 'Should return last_name' do
      expect(@author.last_name).to eq 'Tshobohwa'
    end
  end
end
