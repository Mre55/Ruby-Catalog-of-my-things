class Item
  def initialize(publish_date, archived)
    @id = Random.rand(1..1000)
    # @genre
    # @author
    # @source
    # @label
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

  def can_be_archived?
    return true if @publish_date < 2012
    return false if @publish_date > 2012
  end

  def move_to_archive()
    @archived = true if can_be_archived?
  end
end
