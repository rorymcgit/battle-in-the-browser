

describe Battle, :type => :feature do
  feature "Name input" do
    it "should return \"Let's battle!\"" do
      visit'/'
      expect(page).to have_content("Let's battle!")
    end

    it "should allow 2 players to enter names, submit, store as param and show their names" do
      visit'/'
      fill_in :player_one, with: 'Rory'
      fill_in :player_two, with: 'Albert'
      click_button('Fight!')
      expect(page).to have_content("Player One: Rory VS Player Two: Albert")
    end
  end

  feature "Hit points" do
    it "should show a player's hit points" do
      visit'/'
      fill_in :player_one, with: 'Rory'
      fill_in :player_two, with: 'Albert'
      click_button('Fight!')
      expect(page).to have_content("Albert HP: 100")
    end
  end
end
