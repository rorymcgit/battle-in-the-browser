# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
feature "#player", :plr do
  scenario "returns players name" do
    player1 = Player.new("Natalia")
    expect(player1.name).to eq "Natalia"
  end
end
