def sign_in_and_play
  visit'/'
  fill_in :player_one, with: 'Rory'
  fill_in :player_two, with: 'Albert'
  click_button('Fight!')
end
