require './lib/secret_code.rb'
require './lib/evaluating_guess.rb'
require './lib/player.rb'
require './lib/message.rb'
require './lib/game.rb'

RSpec.describe Game do
  it 'exist' do
    message = Message.new
    player = Player.new(message)
    game = Game.new(message, player)
    expect(game).to be_an_instance_of(Game)
  end


  describe 'StartGame input method' do
    it 'puts welcome message' do
      message = Message.new
      player = Player.new(message)
      game = Game.new(message, player)
      expect(game.start_game_input).to eq(nil)
    end

    it 'play message' do
      message = Message.new
      player = Player.new(message)
      game = Game.new(message, player)
      expect(game).to receive(:gets_user_input).and_return("p")
      expect(game.start_game_input).to eq(message.play_message)
    end

    it 'instruction message' do
      message = Message.new
      player = Player.new(message)
      game = Game.new(message, player)
      expect(game).to receive(:gets_user_input).and_return("i")
      expect(game.start_game_input).to eq(message.instructions_message)
    end

    it 'quit message' do
      message = Message.new
      player = Player.new(message)
      game = Game.new(message, player)
      expect(game).to receive(:gets_user_input).and_return("q")
      expect(game.start_game_input).to eq(message.quits_message)
    end
  end
end
