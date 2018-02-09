require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) {double('matt')}
  let(:player_2) {double('josue')}

  describe '#attack' do
    it 'calls receive method on the attacked player' do
      expect(player_2).to receive(:is_damaged).with no_args
      game.attack(player_1, player_2)
    end
  end
end