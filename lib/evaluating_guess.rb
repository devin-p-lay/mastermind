require "./lib/secret_code"

class EvaluatingGuess
  # def initialize(secret_code)
  #   @secret_code = secret_code
  # end

  def prompt
    puts "What is your guess?"
  end

  def guess_attempt
    #USER FILE???
    gets.chomp
  end

  def guess(user_guess, secret_code)
<<<<<<< HEAD
    require "pry"; binding.pry
    secret_code = SecretCode.colors
=======
>>>>>>> game
    hint = {correct_colors: 0, correct_positions: 0}
    if user_guess == secret_code
      "you win"
    else
<<<<<<< HEAD
      user_guess.each_with_index do |x, index|
        if x == secret_code[index]
=======
      user_guess.each_with_index do |element, index|
        if element == secret_code[index]
>>>>>>> game
            hint[:correct_positions] += 1
        end
      end

      ["b","r","g","y"].each do |color|
        user_color = user_guess.find_all do |element|
          element == color
        end.count
        secret_color = secret_code.find_all do |element|
          element == color
        end.count
        if secret_color >= user_color
          hint[:correct_colors] += user_color
        else
          hint[:correct_colors] += secret_color
        end
      end
<<<<<<< HEAD

      puts "You have #{hint[:correct_colors]} colors correct and #{hint[:correct_positions]} colors in the correct position."

=======
      puts "With the guess of #{user_guess}: You have #{hint[:correct_colors]} colors correct and #{hint[:correct_positions]} colors in the correct position."
      hint
>>>>>>> game
    end
  end
end
