class Label
  attr_accessor :title, :color
  attr_reader :id, :items

  def initialize(title, color, id: rand(10_000))
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    item.label = self
    @items << item
  end
end
