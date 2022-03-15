require 'date'

class Item
  attr_accessor :genre, :author, :source, :label, :publish_date
  attr_reader :id, :archived

  def initialize(publish_date, archived, id: nil)
    @id = id || Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
  end

  def add_source(source)
    @source = source
  end

  def add_label(label)
    @label = label
  end

  def move_to_archive()
    @archived = true if can_be_archived?
  end

  private
  def can_be_archived?
    if Date.parse(@publish_date) < Date.parse("2012-01-1")
      return true;
    else
      return false
    end
  end
end
