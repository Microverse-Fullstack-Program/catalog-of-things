require 'date'

class Item
  attr_accessor :publish_date, :genre, :author, :source, :label
  attr_reader :id, :archived

  def initialize(publish_date, id: Random.rand(1..1000), archived: false)
    @id = id
    @publish_date = publish_date
    @archived = can_be_archived?
    @genre = nil
    @author = nil
    @source = nil
    @label = label
  end

  def can_be_archived?
    true if Date.today.year - Date.parse(@publish_date.to_s).year > 10
  end

  private :can_be_archived?

  def move_to_archive
    return unless can_be_archived?

    true
  end
end
