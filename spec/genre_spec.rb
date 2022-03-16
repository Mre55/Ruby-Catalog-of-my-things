require './classes/genre'
require './classes/item'

describe Genre do
  before :each do
    @genre = Genre.new('Talkshow')
    @item = Item.new('2022-03-15', true)
    @itemtwo = Item.new('2022-03-15', false)
  end

  context 'It should create genre and add items' do
    it 'Should return an instance of Genre' do
      expect(@genre.name).to eq 'Talkshow'
    end

    it 'should add the input item to the collection of items' do
      @genre.add_item(@item)
      expect(@genre.items.length).to eq 1
    end
  end
end
