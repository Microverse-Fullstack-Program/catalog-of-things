class Item
  attr_accessor :genre, :author, :source, :label
  attr_reader :id, :publish_date, :archived, 

  def initialize(id, publish_date, archived)
    @id = id
    @publish_date = publish_date
    @archived = archived
    @genre = nil
    @author = nil
    @source = nil
    @label = nil
  end

  def can_be_archived?
    @publish_date > 10
  end

  def move_to_archive
    return unless can_be_archived?

    true
  end
end
