require_relative './item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date, archived, multiplayer, last_played_at, id: nil)
    super(publish_date, archived, id: id)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?
    super && Date.parse(@last_played_at) < Date.parse('2020-01-1')
  end
end
