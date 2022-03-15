require_relative 'app'

def main
  puts 'Welcome to Catalog of my things!'
  logic = App.new
  logic.switch_case
end

main
