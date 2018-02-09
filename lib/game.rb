class Game
  attr_reader :players, :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = 0
  end

  def attack(player_1, player_2)
    player_2.is_damaged
    change_turn
  end

  private

  def change_turn
    @turn = (@turn + 1) % 2
  end

end