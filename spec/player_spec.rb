# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
  describe Player do
  subject(:natalia) { Player.new('Natalia') }
  subject(:rory) { Player.new('Rory') }

  describe '#name' do
    it 'returns the name' do
      expect(natalia.name).to eq 'Natalia'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(natalia.hp).to eq(100) # CHANGE WHEN CONSTANT INTRODUCED
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(rory).to receive(:receive_damage)
      natalia.attack(rory)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { natalia.receive_damage }.to change { natalia.hp }.by(-10)
    end
  end
end
