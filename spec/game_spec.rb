require 'date'
require_relative '../classes/game'

describe Game do
  before :each do
    last_played_at_date_string = '13-05-2023'
    publish_date_date_string = '13-05-2020'
    @last_played_at = Date.strptime(last_played_at_date_string, '%d-%m-%Y')
    @publish_date = Date.strptime(publish_date_date_string, '%d-%m-%Y')
    @game = Game.new(true, @last_played_at, @publish_date, false)
  end

  describe '#new' do
    it 'Should create a new game object' do
      expect(@game).to be_instance_of Game
    end
  end

  context 'when Game object created' do
    it 'Should return last_played_at' do
      expect(@game.last_played_at).to eq @last_played_at
    end
    it 'Should return publish_date' do
      expect(@game.publish_date).to eq @publish_date
    end
    it 'Should return archived' do
      expect(@game.archived).to eq false
    end

    it 'Should return multiplayer' do
      expect(@game.multiplayer).to eq true
    end
  end
  context 'When can_be_archived method is called' do
    it 'Shout return false when current date - last_played_date is less than 2' do
      expect(@game.can_be_archived?).to eq false
    end
  end
end
