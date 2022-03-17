require_relative '../classes/item'
require_relative '../classes/genre'
require_relative '../classes/author'
require_relative '../classes/label'

describe Item do
  context 'When testing the Item class' do
    it 'The initialize method should return create new Item object' do
      item = Item.new('2202/2/2', false)
      expect(item.publish_date).to eq '2202/2/2'
    end

    it 'The add_genre method should add one genre' do
      genre = Genre.new('Kerolous')
      item = Item.new('2022/2/2', false)
      item.add_genre(genre)
      expect(item.genre).to be_an_instance_of Genre
    end

    it 'The add_genre method should add one genre' do
      author = Author.new('Kerolous', 'Samy')
      item = Item.new('2022/2/2', false)
      item.add_author(author)
      expect(item.author).to be_an_instance_of Author
    end

    it 'The add_label method should add one label' do
      label = Label.new('Title 1', 'Blue')
      item = Item.new('2022/2/2', false)
      item.add_label(label)
      expect(item.label).to be_an_instance_of Label
    end

    it 'The move_to_archive? method should return true' do
      item = Item.new('2002-2-2', false)
      expect(item.move_to_archive).to be true
    end
  end
end
