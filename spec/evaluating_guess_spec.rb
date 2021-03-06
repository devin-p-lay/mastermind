require 'rspec'
require './lib/secret_code'
require './lib/evaluating_guess'

RSpec.describe EvaluatingGuess do
  it 'exist' do
    attempt = EvaluatingGuess.new
    expect(attempt).to be_a(EvaluatingGuess)
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
