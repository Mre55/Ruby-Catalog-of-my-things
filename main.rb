def do_action(_option); end

def main
  puts 'Welcome to Catalog of my things!'
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
    12 - Add a game'

  choosen_option = 0

  until choosen_option.to_i >= 1 && choosen_option.to_i <= 12
    puts 'Write a number from 1-12 that represent the desire option'
    choosen_option = gets.chomp
  end
  do_action(choosen_option)
end
