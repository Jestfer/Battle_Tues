require 'player'

describe Player do

  subject(:player) { described_class.new('Lola') }
  subject(:player_2) { described_class.new('Carmela') }

  context 'when initialized' do
    it 'has a name' do
      expect(player.name).to eq 'Lola'
    end
    it 'has maximum hit points' do
      expect(player.hp).to eq Player::MAX_HP
    end
  end

  context 'when player attacks' do
    it 'hits the opponent player' do
      expect(player_2).to receive(:is_damaged)
      player.attack(player_2)
    end

    it "reduces the opponent's HP" do
      expect { player_2.is_damaged }.to change { player_2.hp }.by(-10)
    end
  end
end
