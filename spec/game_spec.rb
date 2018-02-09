require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) {double('matt')}
  let(:player_2) {double('josue')}

  describe '#attack' do
    it 'calls receive method on the attacked player' do
      expect(player_2).to receive(:is_damaged).with no_args
      game.attack
    end

    it 'calls change turn on game' do
      expect(game).to receive(:change_turn)
      allow(player_2).to receive(:is_damaged).with no_args
      game.attack
    end

    it 'changes the turn' do
      allow(player_2).to receive(:is_damaged).with no_args
      expect{game.attack}.to change{game.turn}.from(0).to(1)
    end
  end
end