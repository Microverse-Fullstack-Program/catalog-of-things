class MusicAlbum < Item
  attr_accessor :on_spotify, :title

  def intialize(title, _on_spotify, publish_date, archived)
    super(publish_date, archived)
    @title = title
    @on_spotify = false
  end

  def can_be_archived?
    true if super && @on_spotify

    false
  end
end
