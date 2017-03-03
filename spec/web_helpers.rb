def sign_in_and_play
  visit'/'
  player1 = Player.new('Dave')
  player2 = Player.new('Mittens')
  fill_in :player_one, with: player1.name
  fill_in :player_two, with: player2.name
  click_button('Fight!')
end
