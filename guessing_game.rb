puts "Guess a number, any number, so long as it's between 1-100."

comp_answer = (1..100).to_a.sample
#puts comp_answer
guesses = 0
prev_answers = []

loop do
  guesses += 1
  player_answer = gets.chomp.to_i

  puts "Previous answers: #{prev_answers}"
  if prev_answers.include? player_answer
    puts "You already tried that. You feeling okay?"
  elsif player_answer == comp_answer
    puts "Winner winner chicken dinner"
    puts "It took #{guesses} guesses."
    exit
  elsif player_answer == 0
    puts "Pick a number between 1-100."
  elsif player_answer > comp_answer
    puts "Too high, too high!"
  elsif player_answer < comp_answer
    puts "Eh, try bumping it up a little."
  else player_answer = player_answer
    puts "Are you feeling okay?"
  end

unless prev_answers.include? player_answer
  prev_answers.push player_answer
end

  if guesses >= 5
    puts "You took too long. Bye!"
    break
  end
end
