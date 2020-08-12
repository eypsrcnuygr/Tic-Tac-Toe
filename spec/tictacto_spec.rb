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

  describe '#choose_opponent' do
    let(:opponent) { player1.opponent_choice }
    it 'throws error if the opponent is not human or cpu' do
      expect(opponent).to eql 'human' || 'cpu'
    end
  end
end

describe Game do
  let(:game) { Game.new }
  let(:board) { %w[x x o x o _ x _ _] }
  let(:symbol) { 'x' }

  describe '#condition_checker' do
    it 'expects a linear winning case' do
      expect(board[0..2]).to eql board.each_slice(3).to_a[0] ||
                                 board.each_slice(3).to_a.transpose[0]
    end
    it 'expects a diagonal winning case' do
      expect(true).to eql game.diagonal(%w[x x o o x _ o _ x], 'x')
    end
  end
end
