require './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at
  
  def initialize(publish_date, archived, multiplayer, last_played_at)
    super(publish_date, archived)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    if super && @last_played_at < 2020
      return true
    else
      return false
    end
  end
end