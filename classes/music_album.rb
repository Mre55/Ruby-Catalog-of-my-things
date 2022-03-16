require_relative './item'
class MusicAlbum < Item
  attr_accessor :on_spotify, :archived
  attr_reader :publish_date

  def initialize(*args, on_spotify)
    super(*args)
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
