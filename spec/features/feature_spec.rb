

describe Battle, :type => :feature do
  feature "Name input" do
    it "should return \"Let's battle!\"" do
      visit'/'
      expect(page).to have_content("Let's battle!")
    end

    it "should allow 2 players to enter names, submit, store as param and show their names" do
      sign_in_and_play
      expect(page).to have_content("Player One: Rory VS Player Two: Natalia")
    end
  end

  feature "Hit points" do
    it "should show a player's hit points" do
      sign_in_and_play
      expect(page).to have_content("Natalia HP: 100")
    end
  end

  scenario "attack reduces player 2's points" do
    # p $player_two
    sign_in_and_play
    expect{click_button('Attack!')}.to change{$player_two.hp}.by -10
    # p $player_two
  end
end
