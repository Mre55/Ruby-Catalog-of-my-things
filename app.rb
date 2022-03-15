class App
  attr_accessor :books

  def initialize
    @books = books
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

  def switch_options(option)
    case option
    when 1
      display_books
    else
      puts 'Not an option'
    end
  end

  def switch_case
    loop do
      display_list
      option = gets.chomp.to_i
      break if option.zero?

      switch_options(option)
    end
  end
end
