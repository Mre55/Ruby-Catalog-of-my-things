require './classes/game'
require './classes/author'
require './classes/book'
require './classes/label'
require './classes/music_album'
require './classes/genre'
require 'json'

module DataStorage
  def read_music_albums
    file = './json_data/music_albums-data.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |element|
        data.push(MusicAlbum.new(element['publish_date'], element['archived'], element['name'], element['on_spotify'],
                                 id: element['id'].to_i))
      end
    end
    data
  end

  def read_genres
    file = './json_data/genres-data.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |element|
        data.push(Genre.new(element['name']))
      end
    end
    data
  end

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

  def read_labels
    file = './json_data/labels-data.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |element|
        data.push(Label.new(element['title'], element['color']))
      end
    end
    data
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

  def save_books(books)
    data = []
    books.each do |book|
      data.push({ id: book.id, publisher: book.publisher, cover_state: book.cover_state })
    end
    File.write('./json_data/book-data.json', JSON.generate(data))
  end

  def save_music_albums(music_albums)
    data = []
    music_albums.each do |music_album|
      data.push({ id: music_album.id, publish_date: music_album.publish_date, archived: music_album.archived,
                  name: music_album.name, on_spotify: music_album.on_spotify })
    end
    File.write('./json_data/music_albums-data.json', JSON.generate(data))
  end

  def save_games(games)
    data = []
    games.each do |game|
      data.push({ id: game.id, publish_date: game.publish_date, archived: game.archived, multiplayer: game.multiplayer,
                  last_played_at: game.last_played_at })
    end
    File.write('./json_data/games-data.json', JSON.generate(data))
  end
end
