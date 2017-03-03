# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
  describe Player do
  subject(:mittens) { Player.new('Mittens') }
  subject(:dave) { Player.new('Dave') }

  describe '#name' do
    it 'returns the name' do
      expect(mittens.name).to eq 'Mittens'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(mittens.hp).to eq(100) # CHANGE WHEN CONSTANT INTRODUCED
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { mittens.receive_damage }.to change { mittens.hp }.by(-10)
    end
  end
end
