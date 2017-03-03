require 'game'

describe Game do
  subject(:game) { Game.new }
  let(:plyr) { double }

  describe '#attack' do
    it 'damages the player' do
      expect(plyr).to receive(:receive_damage)
      game.attack(plyr)
    end
  end
end
