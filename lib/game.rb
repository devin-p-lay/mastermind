require './lib/secret_code.rb'
require './lib/evaluating_guess.rb'
require './lib/player.rb'
require './lib/message.rb'
require './lib/game.rb'

class Game
  def initialize(message, player)
    @message = message
    @player = player
    @secret_code = SecretCode.new
  end

  def gets_user_input
    gets.chomp.downcase.strip
  end

  def welcome
    @message.welcome_message
    start_game_input
  end

  def start_game_input
    prompt = gets_user_input
    if prompt == 'p'

      @message.play_message
      @message.prompt_a_guess_message
      # prompt_a_guess_message

      #game_flow
    elsif prompt == 'i'
      @message.instructions_message
      start_game_input
    elsif prompt == 'q'
      @message.quits_message
      exit!
    else
      @message.wrong_input
      start_game_input
    end
  end

  
end


# #receive player input (P,I,Q)

#prompt
# #receive player input (P,I,Q,Guess,Cheat)
#
# guess = EvaluatingGuess.guess
