class Genre
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name = '', id = Random.rand(1000))
    @id = id 
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
