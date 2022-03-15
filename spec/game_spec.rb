require_relative '../classes/game'

describe Game do 
  context "When testing the Game class" do

     it "The initialize method should return create new Game object" do 
        game = Game.new('2009-01-1', false, true, '2019-01-1')
        expect(game.multiplayer).to be true
     end
     
     it "The can_be_archived? method should return false" do
      game = Game.new('2009-01-1', false, true, '2019-01-1')
      expect(game.can_be_archived?).to be true
    end
  end 
end