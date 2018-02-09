class Game
  attr_reader :players, :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = 0
  end

  def attack
    @turn == 0 ? @players[1].is_damaged : @players[0].is_damaged
    change_turn
  end

  private

  def change_turn
    @turn = (@turn + 1) % 2
  end

end