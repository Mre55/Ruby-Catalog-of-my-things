require_relative './item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at
  
  def initialize(publish_date, archived, multiplayer, last_played_at)
    super(publish_date, archived)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    if super && Date.parse(@last_played_at) < Date.parse("2020-01-1")
      return true
    else
      return false
    end
  end
end