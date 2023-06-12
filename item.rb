class Item
  def initialize(id, publish_date, archived)
    @id = id
    @publish_date = publish_date
    @archived = archived
  end

  def genre(genre)
    @genre = genre
  end

  def author(author)
    @author = author
  end

  def source(source)
    @source = source
  end

  def label(label)
    @label = label
  end

  def can_be_archived?
    @publish_date > 10
  end

  def move_to_archive
    return unless can_be_archived?

    true
  end
end
