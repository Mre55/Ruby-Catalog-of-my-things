require './data_storage'
require './classes/game'

class App
  attr_accessor :books, :games, :authors, :labels, :music_albums, :genres

  include DataStorage

  def initialize
    @music_albums = read_music_albums
    @genres = read_genres
    @books = read_books
    @labels = read_labels
    @games = read_games
    @authors = read_authors
  end

  def display_list
    puts 'Please choose an option by entering a number:
    1 - List all books
    2 - List all music albums
    3 - List of games
    4 - List all genres
    5 - List all labels
    6 - List all authors
    7 - Add a book
    8 - Add a music album
    9 - Add a game
    0 - Exit'
  end

  def display_music_albums
    music_albums.each do |music_album|
      puts "Name: #{music_album.name}, Publish Date: #{music_album.publish_date}, On Spotify: #{music_album.on_spotify}"
    end
  end

  def display_genres
    genres.each do |genre|
      puts "Name: #{genre.name}"
    end
  end

  def display_books()
    books.each do |book|
      puts "Publisher: #{book.publisher}, Cover state: #{book.cover_state}"
    end
  end

  def display_labels
    labels.each do |label|
      puts "Title: #{label.title}, Color: #{label.color}"
    end
  end

  def display_games
    games.each do |game|
      puts "Publish Date:#{game.publish_date}, Multiplayer: #{game.multiplayer}, Last Played At: #{game.last_played_at}"
    end
  end

  def display_authors
    authors.each do |author|
      puts "#{author.first_name} #{author.last_name}"
    end
  end

  def create_book()
    print 'Publish Date: '
    publish_date = gets.chomp
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover state: '
    cover_state = gets.chomp

    books.push(Book.new(publish_date, 'good', publisher, cover_state))
    puts 'Book created successfully.'
  end

  def create_game
    print 'Publish Date: '
    publish_date = gets.chomp
    print 'Multiplayer?: '
    multiplayer = gets.chomp
    print 'Last Played At: '
    last_played_at = gets.chomp

    games.push(Game.new(publish_date, 'false', multiplayer, last_played_at))
    puts 'Game created successfully.'
  end

  def create_music_album
    print 'Name: '
    name = gets.chomp
    print 'Publish Date: '
    publish_date = gets.chomp
    print 'On Spotify? [T or F]: '
    on_spotify = gets.chomp

    music_albums.push(MusicAlbum.new(publish_date, true, name, on_spotify))
    puts 'Music album created successfully.'
  end

  def switch_options1(option)
    case option
    when 1
      display_books
    when 2
      display_music_albums
    when 3
      display_games
    when 4
      display_genres
    end
  end

  def switch_options2(option)
    case option
    when 5
      display_labels
    when 6
      display_authors
    when 7
      create_book
    when 8
      create_music_album
    when 9
      create_game
    end
  end

  def save_data()
    save_music_albums(@music_albums)
    save_books(@books)
    save_games(@games)
  end

  def switch_case
    loop do
      display_list
      option = gets.chomp.to_i
      break if option.zero?

      switch_options1(option)
      switch_options2(option)
    end
    save_data
  end
end
