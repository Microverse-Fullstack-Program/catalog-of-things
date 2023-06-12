class Genre
  attr_reader :id, :items
  attr_accessor :name

  def intialize(name)
    @id = Random.rand(1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
