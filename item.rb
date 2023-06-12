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
end
