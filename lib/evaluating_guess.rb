class EvaluatingGuess

  def prompt
    puts "What is your guess?"
  end

  def guess_attempt
    gets.chomp
  end

  def guess(user_guess, secret_code)
    hint = {correct_colors: 0, correct_positions: 0}
    if user_guess == secret_code
      "you win"
    else
      user_guess.each_index do |x|
        secret_code.each_index do |y|
          if x == y
            hint[:correct_positions] += 1
          end
        end
      end
      hint
    end
  end
end
