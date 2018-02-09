class Player
  MAX_HP = 100
  BASIC_ATTACK = 10

  attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = MAX_HP
  end

  def is_damaged
    @hp -= 10
  end
end
