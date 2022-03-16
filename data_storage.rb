require './classes/game'
require './classes/author'
require 'json'

module DataStorage
  def read_games
    file = './json_data/games-data.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |element|
        data.push(Game.new(element['publish_date'], element['archived'], element['multiplayer'],
                           element['last_played_at'], id: element['id'].to_i))
      end
    end
    data
  end

  def save_games(games)
    data = []
    games.each do |game|
      data.push({ id: game.id, publish_date: game.publish_date, archived: game.archived, multiplayer: game.multiplayer,
                  last_played_at: game.last_played_at })
    end
    File.write('./json_data/games-data.json', JSON.generate(data))
  end

  def read_authors
    file = './json_data/authors-data.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |element|
        data.push(Author.new(element['first_name'], element['last_name']))
      end
    end
    data
  end
end
