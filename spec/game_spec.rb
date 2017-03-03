require 'game'

describe Game do
  subject(:game) { Game.new(plyr1, plyr2) }
  let(:plyr1) { double }
  let(:plyr2) { double }

  describe '#attack' do
    it 'damages the player' do
      expect(plyr1).to receive(:receive_damage)
      game.attack(plyr1)
    end
  end

  describe "#returns players when called" do
    it "player1" do
      expect(game.player1).to be(plyr1)
    end

    it "player2" do
      expect(game.player2).to be(plyr2)
    end
  end
end
