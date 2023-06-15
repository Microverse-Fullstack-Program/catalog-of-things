require_relative '../classes/label'

describe Label do
  before :each do
    @label = Label.new('Title', 'Color')
  end

  describe '#new' do
    it 'Should create a new Label object' do
      expect(@label).to be_instance_of Label
    end
  end

  context 'when Label object is created' do
    it 'Should return title' do
      expect(@label.title).to eq 'Title'
    end
    it 'Should return Color' do
      expect(@label.color).to eq 'Color'
    end
  end
end
