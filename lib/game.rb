class Game
  PREV = "You already tried that. You feeling okay?"
  WIN = "Winner winner chicken dinner"
  INVALID = "Pick a number between 1-100."
  HIGH = "Too high, too high!"
  LOW = "Eh, try bumping it up a little."
  MAX = "You took too long. Bye!"

  def start
    puts "Guess a number, any number, so long as it's between 1-100."

    comp_answer = (1..100).to_a.sample
    guesses = 0
    prev_answers = []

  def prev_string(prev_answers)
    puts "Previous answers: #{prev_answers}"
  end

  def num_guesses(guesses)
    puts "It took #{guesses} guesses."
  end

    loop do
      guesses += 1
      player_answer = gets.chomp.to_i
      prev_string(prev_answers)
      if prev_answers.include? player_answer
        puts PREV
      elsif player_answer == comp_answer
        puts WIN
        num_guesses(guesses)
        exit
      elsif player_answer == 0
        puts INVALID
      elsif player_answer > comp_answer
        puts HIGH
      elsif player_answer < comp_answer
        puts LOW
      end

    unless prev_answers.include? player_answer
      prev_answers.push player_answer
    end

      if guesses >= 5
        puts MAX
        break
      end
    end
  end
end
