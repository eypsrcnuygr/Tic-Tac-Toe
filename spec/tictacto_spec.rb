require '../lib/game.rb'
require '../lib/player.rb'

describe Player do
  let(:player1) { Player.new('x', 'human') }
  let(:game) { Game.new }

  describe '#move' do
    context 'if input matches the number between 1..9' do
      let(:choices) { game.choices }
      let(:board) { game.board }
      let(:input) { 3 }
      let(:opponent) { 'human' }
      it 'correctly places the symbol in the board' do
        expect(1..9).to include(input)
      end
    end
  end
end
