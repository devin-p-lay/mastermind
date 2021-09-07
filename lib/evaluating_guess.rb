require "./lib/secret_code"
require "./lib/message"
require "./lib/player"
require "./lib/game"

class EvaluatingGuess
  attr_reader :colors
  def initialize(player, secret_code)
    @user_guess = player.player_guess_attempt
    @secret_code = secret_code.colors
  end


  def guess
    hint = {correct_colors: 0, correct_positions: 0}
    if @user_guess == @secret_code
      "you win"
    elsif @user_guess == ["q"]
      exit
    elsif @user_guess == ["c"]
      p @secret_code
    else
      @user_guess.each_with_index do |element, index|
        if element == @secret_code[index]
            hint[:correct_positions] += 1
        end
      end

      ["b","r","g","y"].each do |color|
        user_color = @user_guess.find_all do |element|
          element == color
        end.count
        secret_color = @secret_code.find_all do |element|
          element == color
        end.count
        if secret_color >= user_color
          hint[:correct_colors] += user_color
        else
          hint[:correct_colors] += secret_color
        end
      end

      puts "You have #{hint[:correct_colors]} colors correct and #{hint[:correct_positions]} colors in the correct position."

    end
  end
end
