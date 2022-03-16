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
  describe '#can_be_archived?' do
    it 'should return true if cover_state equals to "bad"' do
      bad_cover_book = Book.new('2020-10-25', true, 'Addis Ababa Press', 'bad')
      expect(bad_cover_book.can_be_archived?).to be true
    end
    it 'should return true if parents method returns true' do
      old_book = Book.new('1985-10-09', true, 'Addis Ababa University Press', 'good')
      expect(old_book.can_be_archived?).to be true
    end
    it 'otherwise should return false' do
      expect(@book.can_be_archived?).to be false
    end
  end
end