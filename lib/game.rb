class Game

  attr_reader :player1, :player2, :current_player, :opponent, :players

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @current_player = player1
    @opponent = player2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_player = @opponent
    @opponent = players.select { |p| p != current_player }.first
  end

  def over?
    losing_player.any?
  end

  def loser
    losing_player.first
  end

  def losing_player
    players.select { |p| p.hp <= 0 }
  end

end
