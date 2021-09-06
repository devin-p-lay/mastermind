require './lib/secret_code.rb'
require './lib/evaluating_guess.rb'
require './lib/player.rb'
require './lib/messages.rb'


intro = Messages.intro

#receive player input (P,I,Q)
secret_code = SecretCode.new

prompt_guess = Messages.prompt

#receive player input (P,I,Q,Guess,Cheat)

guess = EvaluatingGuess.guess
