require 'rspec'
require './lib/secret_code'
require './lib/evaluating_guess'
require './lib/message'
require './lib/player'

RSpec.describe Player do
  it 'exist' do
    message = Message.new
    player = Player.new(message)
    expect(player).to be_an_instance_of(Player)
  end

  xit 'it prompts the user' do
    message = Message.new
    player = Player.new(message)
    expect do
      attempt.prompt
    end.to output("What is your guess?\n").to_stdout
  end

  xit 'receives user input' do
    message = Message.new
    player = Player.new(message)
    input = StringIO.new("rbgy\n")
    expect(attempt.guess_attempt).to eq("rbgy")
  end

  describe 'StartGame input method' do
    it 'play message' do
      message = Message.new
      player = Player.new(message)
      expect(player).to receive(:gets_user_input).and_return("p")
      expect(player.start_game_input).to eq(message.play_message)
    end
  end
end
