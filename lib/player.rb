class Player

  attr_reader :name, :hp

  HP = 100
  DMG = 10

  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= DMG
  end

end
