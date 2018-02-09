class Game
  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack(player_1, player_2)
    player_2.is_damaged
  end

end