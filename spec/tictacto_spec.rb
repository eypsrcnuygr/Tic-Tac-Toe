require './bin/main.rb'
require '../lib/game.rb'
require '../lib/player.rb'

describe Player do
  let (:player) { Player.new }
  describe '#move' do
    context 'if input matches the number between 1..9' do
      it 'correctly places the symbol in the board' do
        checker = player.input.match?(/\b[1-9]\b/)
        expect(checker).to include 1..9
      end
    end 
  end
end 