# As Player 1,
# So I can win a game of Battle,
#  I want to attack Player 2, and I want to get a confirmation

feature "#attack" do
  scenario "attack player 2 and get confirmation" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Albert has been attacked!")
  end
end
