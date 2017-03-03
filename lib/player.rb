class Player

  attr_reader :name, :hp

  HP = 100
  DMG = 10

  def initialize(name)
    @name = name
    @hp = HP
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= DMG
  end

end
