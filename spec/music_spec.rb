require './classes/music_album'

describe MusicAlbum do
  before :each do
    @musicalbum = MusicAlbum.new('2022-03-15', true, true)
    @musicalbumtwo = MusicAlbum.new('2022-03-15', true, false)
  end

  context 'When MusicAlbum is on_spotity to true' do
    it 'Should return an instance of the Class musicAlbum' do
      expect(@musicalbum).to be_an_instance_of MusicAlbum
    end
  end

  context 'When MusicAlbum is on_spotity to false' do
    it 'Should return an instance of the Class musicAlbum' do
      expect(@musicalbumtwo).to be_an_instance_of MusicAlbum
    end
  end
end
