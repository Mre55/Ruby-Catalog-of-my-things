require './data_storage'
require './classes/game'

class App
  attr_accessor :books, :games, :authors, :labels

  include DataStorage

  def initialize
    @books = read_books
    @labels = read_labels
    @games = read_games
    @authors = read_authors
  end

  def display_list
    puts 'Please choose an option by entering a number:
    1 - List all books
    2 - List all music albums
    3 - List all movies
    4 - List of games
    5 - List all genres
    6 - List all labels
    7 - List all authors
    8 - List all sources
    9 - Add a book
    10 - Add a music album
    11 - Add a movie
    12 - Add a game
    0 - Exit'
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

  def switch_options(option)
    case option
    when 1
      display_books
    when 4
      display_games
    when 6
      display_labels
    when 7
      display_authors
    when 9
      create_book
    when 12
      create_game
    else
      puts 'Not an option'
    end
  end

  def save_data()
    save_books(@books)
    save_games(@games)
  end

  def switch_case
    loop do
      display_list
      option = gets.chomp.to_i
      break if option.zero?

      switch_options(option)
    end
    save_data
  end
end
