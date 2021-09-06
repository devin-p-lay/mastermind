require 'rspec'
require './lib/secret_code'
require './lib/evaluating_guess'
require './lib/player'
require './lib/message'

RSpec.describe Message do
  it 'exist' do
    message = Message.new

    expect(message).to be_an_instance_of(Message)
  end

  it "outputs welcome message" do
    message = Message.new
    expect do
      message.welcome
    end.to output(
      "Welcome to MASTERMIND\nWould you like to (p)lay the game, read the (i)nstructions, or (q)uit?\n"
    ).to_stdout
  end

  it "outputs messages based on input" do
    message = Message.new
    expect do
      message.user_input
      starting == 'p'
    end.to output(
      "play
      I have generated a beginner sequence with four elements made up of:
      (r)ed, (g)reen, (b)lue, and (y)ellow.
      Use (q)uit at any time to end the game.
      What's your guess?"
      ).to_stdout

    expect do
      message.input
      starting == 'i'
    end.to output(
        "instructions
       ****Rules of Gameplay****
       Your goal is to guess a secret code
       Each code is made up of 4 random elements
       I will give you hints along the way
       If you want to cheat type 'c'
       You are being timed..."
        ).to_stdout
    end
end
