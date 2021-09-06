require 'rspec'
require './lib/secret_code'
require './lib/evaluating_guess'

RSpec.describe EvaluatingGuess do
  it 'exist' do
    attempt = EvaluatingGuess.new
    expect(attempt).to be_a(EvaluatingGuess)
  end

  it 'it prompts the user' do
    attempt = EvaluatingGuess.new
    expect do
      attempt.prompt
    end.to output("What is your guess?\n").to_stdout
  end

  it 'receives user input' do
    attempt = EvaluatingGuess.new
    input = StringIO.new("rbgy\n")
    expect(attempt.guess_attempt).to eq("rbgy")
  end

  describe "#guess method" do
    it 'returns correct' do
      attempt = EvaluatingGuess.new
      user_guess = ["g","g","g","g"]
      secret_code = ["g","g","g","g"]
      expect(attempt.guess(user_guess,secret_code)).to eq("you win")
    end

    it 'returns nothing correct' do
      attempt = EvaluatingGuess.new
      user_guess = ["r","r","r","r"]
      secret_code = ["g","g","g","g"]
      expect(attempt.guess(user_guess,secret_code)).to eq({correct_colors: 0, correct_positions: 0})
    end

    it 'returns partial correct' do
      attempt = EvaluatingGuess.new
      user_guess = ["g","r","g","r"]
      secret_code = ["g","g","g","g"]
      expect(attempt.guess(user_guess,secret_code)).to eq({correct_colors: 2, correct_positions: 2})
    end
  end
end
