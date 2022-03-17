require_relative './item'
class MusicAlbum < Item
  attr_accessor :on_spotify, :archived, :name
  attr_reader :publish_date

  def initialize(publish_date, archived, name, on_spotify, id: nil)
    super(publish_date, archived, id: id)
    @name = name
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    if super && @on_spotify
      true
    else
      false
    end
  end
end
