require_relative '../classes/book'
require_relative '../classes/item'

describe Book do
  before :each do
    @book = Book.new('2020-10-25', true, 'Addis Ababa University Press', 'good')
  end
  it 'creates an instance of a Book' do
    expect(@book).to be_instance_of Book
  end
  it 'creates an instance of an Item' do
    expect(@book).to be_a Item
  end
  it 'The move_to_archive? method should return true' do
    game = Book.new('2009-01-1', true, 'Addis Ababa University Press', 'good')
    expect(game.move_to_archive).to be true
  end
end
