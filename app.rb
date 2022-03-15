require './data_storage'
require './classes/game'

class App
  attr_accessor :books, :games

  include DataStorage

  def initialize
    @books = books
    @games = read_games
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

  def display_books
    p 'No book in the shelf to show'
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
    when 7
      display_authors
    when 12
      create_game
    else
      puts 'Not an option'
    end
  end

  def save_data()
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
