require './lib/secret_code.rb'
require './lib/evaluating_guess.rb'
require './lib/player.rb'
require './lib/message.rb'
require './lib/game.rb'

class Game
  attr_reader :player
  def initialize(message, player)
    @message = message
    @player = player
    @secret_code = SecretCode.new
    welcome
  end

  def gets_user_input
    gets.chomp.downcase.strip
  end

  def welcome
    @message.welcome_message
    start_game_input
  end

  def start_game_input #(gets passed a string prompt)
    prompt = gets_user_input
    if prompt == 'p'
      @message.play_message

      game_flow

    elsif prompt == 'i'
      @message.instructions_message
      gets_user_input
        if prompt == 'p'
          @message.play_message
          game_flow
        else
          exit
        end
    elsif prompt == 'q'

      @message.quits_message
      exit
    else
      @message.wrong_input
      start_game_input
    end
  end

  def game_flow
    evaluating_guess = EvaluatingGuess.new(@player, @secret_code)

    @message.prompt_a_guess_message

    evaluating_guess.guess
    game_flow
  end

  def quit_game
    prompt
  end
end




#prompt
# #receive player input (P,I,Q,Guess,Cheat)
#
# guess = EvaluatingGuess.guess
