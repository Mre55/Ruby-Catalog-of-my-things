require_relative '../classes/author'
require_relative '../classes/item'

describe Author do
  context 'When testing the Author class' do
    it 'The initialize method should return create new Author object' do
      author = Author.new('Kerolous', 'Samy')
      expect(author.first_name).to eq 'Kerolous'
    end

    it 'The add_item method should add one item' do
      author = Author.new('Kerolous', 'Samy')
      item = Item.new('2022/2/2', false)
      author.add_item(item)
      expect(author.items.length).to be 1
    end
  end
end
