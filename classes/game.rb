require 'date'
require_relative 'item'
class Game < Item
  attr_reader :multiplayer, :last_played_at, :publish_date, :archived

  def initialize(multiplayer, last_played_at, publish_date, archived, id: Random.rand(1000))
    super(publish_date, archived, id: id)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    return true if super && @last_played_at.year - Date.today.year > 2

    false
  end
end
