# As Player 1,
# So I can win a game of Battle,
#  I want to attack Player 2, and I want to get a confirmation

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature "#attack" do
  scenario "attack player 2 and get confirmation" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Dave attacked Mittens!")
  end
end
