require_relative 'item'
require 'date'

class MusicAlbum < Item
  attr_accessor :title, :on_spotify

  def initialize(title, on_spotify, publish_date)
    super(publish_date)
    @title = title
    @on_spotify = on_spotify
    @archived = can_be_archived?
  end

  def can_be_archived?
    return true if super && %w[y Y yes Yes].include?(@on_spotify)

    false
  end
  private :can_be_archived?
end
