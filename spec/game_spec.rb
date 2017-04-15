require 'game'

describe Game do
  subject(:game) { Game.new(plyr1, plyr2) }
  let(:plyr1) { double("Player1", :hp => 60) }
  let(:plyr2) { double("Player2", :hp => 60) }
  let(:dead_plyr) {double("dead", :hp => 0)}

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

  describe "#switch_turn" do
    it "current_player changes after attack" do
      game.switch_turn
      expect(game.current_player).to be(plyr2)
      expect(game.opponent).to be(plyr1)
    end
  end

  describe "#over?" do
    it "returns true when game over" do
      rigged_game = Game.new(plyr1,dead_plyr)
      expect(rigged_game.over?).to be true
      expect(rigged_game.loser).to eq dead_plyr
    end

    it "returns false when players are alive" do
      expect(game.over?).to be false
    end
  end
end
