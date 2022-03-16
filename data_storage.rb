require './classes/game'
require './classes/author'
require './classes/book'
require 'json'

module DataStorage
  def read_books
    file = './json_data/book-data.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |element|
        data.push(Book.new(element['publish_date'], element['archived'], element['publisher'], element['cover_state'],
                           id: element['id'].to_i))
      end
    end
    data
  end

  def save_books(books)
    data = []
    books.each do |book|
      data.push({ id: book.id, publisher: book.publisher, cover_state: book.cover_state })
    end
    File.write('./json_data/book-data.json', JSON.generate(data))
  end

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
