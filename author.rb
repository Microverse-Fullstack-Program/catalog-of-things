require_relative 'item'

class Author
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(publish_date, archived)
    item = Item.new(publish_date, archived)
    @items << item
  end
end
